package Driver;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;
import java.util.Properties;
import java.util.Random;

import testBase.TestBase;

import org.testng.annotations.AfterSuite;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.BeforeSuite;
import org.testng.annotations.Test;

import com.aventstack.extentreports.ExtentReports;
import com.aventstack.extentreports.ExtentTest;
import com.aventstack.extentreports.reporter.ExtentHtmlReporter;
import com.aventstack.extentreports.reporter.configuration.ChartLocation;
import com.aventstack.extentreports.reporter.configuration.Theme;

import org.testng.annotations.Parameters;



import org.openqa.selenium.WebDriver;

import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;

import TestDataReader.ReadObjectRepository;
import TestDataReader.ReadTestCase;
import managers.FileReaderManager;

/**
 * This class contains main function from where execution starts This class call
 * function to read test case excel and read it and send data to actioncaller
 * class line by line. And the end this class calls functions to send summary
 * report
 * 
 * @author IGT
 *

 */


public class Engine extends TestBase {

	String BrowserDetail;
	static String pageName=null;
	static String objectReference=null;
	public static ActionCaller callAction=new ActionCaller(driver);
	//public SeleniumDriver driver;
	protected RemoteWebDriver remoteWebDriver;
	Boolean continueFlag;
	public Boolean exitOnFailureFlag = false;
	String ReportFolder;
	String xslPath;
	static String action=null;
	static String data=null;
	public static String testCaseName=null;
	public static ReadTestCase read= new ReadTestCase();
	//public static ReadObjectRepository readOR= new ReadObjectRepository();
	//public XmlReport reporter=null;
	String startTime = null;
	String endTime =null;
	DesiredCapabilities caps;
	public static Map <String,Map<String,String>> orMap=readObjectsheet(FileReaderManager.getInstance().getConfigReader().properties.getProperty("ObjectRepositoryPath"));

	

	public Properties prop2 = new Properties();
			
	/**
	 * @param pageName
	 * @param objectReference
	 * @param data
	 * @throws Throwable 
	 */
	
	public Engine(WebDriver driver){
		super(driver);
	}
		
	
	public static void callActions(String pageName,String objectReference,String data) throws Throwable
	{

		action=orMap.get(pageName+"-"+objectReference).get("Action").toString().trim();
		/** 
		 * Condition to check if action cell present in the Object Repository has multiple actios to call
		 *  */
		if(action.contains(";"))
		{
			String[] a = action.split("\\;");
			for(String s : a)
			{
				action=s;
					callAction.actionCaller(pageName, objectReference, action, data);				
					System.out.println("#####"+pageName+">>>"+objectReference+">>>"+action+">>>"+data);
				}

			return;
		}
		else
		{
			callAction.actionCaller(pageName, objectReference, action, data);
			System.out.println("#####"+pageName+">>>"+objectReference+">>>"+action+">>>"+data);
		}
	}
	
 
/*	@BeforeClass
	public void openbrowser(String Browser){
		openBrowser("chrome");
	}*/


	/**
	 * @param testCaseFilePath Path to the Test Data workbook
	 * @param sheetName The Name of the sheet in Test Data workbook
	 * @param testCaseName Name of the test case to be executed
	 * @throws Throwable 
	 */
	private static void Iterator(String testCaseFilePath, String sheetName,String testCaseName)
			throws Throwable {
		
			Map<String, Map<String, String>> testCaseMap=read.readTestCaseSheet(testCaseFilePath,sheetName);
			
			Map<String, String> testValueMap=testCaseMap.get(testCaseName);
		
		
			for(Map.Entry<String, String> dataEntry : testValueMap.entrySet())
			{

				try{
					pageName=sheetName.trim();
					objectReference = dataEntry.getKey().toString().trim();
					data = dataEntry.getValue().toString().trim();

					if(objectReference.contains("ScenarioDescription")
							||objectReference.contains("ScenarioName")
							||objectReference.contains("TestCaseName")
							||objectReference.contains("Execute")
							||dataEntry.getValue().toString().equalsIgnoreCase("Skip"))
					{
						continue;
						} 
						
						
					//Condition for moving the focus of sheet
					if(objectReference.contains("Goto"))
					{
						String []or = objectReference.trim().split("-");
						String nextSheetName = or[1].trim();
						//calling Iterator method recursively
						Iterator(testCaseFilePath, nextSheetName/*(AsSheetName)*/  ,data/*(AsTestCaseName)*/);
						continue;
						}

					

					else if(objectReference.equalsIgnoreCase("Launch"))
					{
						navigateTo_HomePage(data);
						continue;
					}
					

/*
					else if(objectReference.equalsIgnoreCase("closebrowser"))
					{
						callAction.actionCaller("","","close","");
						continue;
					}
*/
					

					/** verifyWithVariable: KeyWord will search the data separated by ";" in the OR and the Action for this should be VerifyTextContained  **/

					
					/**$ sign helps to identify and handle the Pax**/

					
					// This condition will be mainly used by FillPaxDetails & VerifyPax Details to append the numeric digit with object name. 
					
					
					// To ignore the steps from execution.
					else if(data.equalsIgnoreCase("Skip"))
					{
						continue;
					}
					

					else{
					System.out.println("#####"+pageName+">>>"+objectReference+">>>"+data);

					}

					callActions(pageName, objectReference, data);
					}

				catch (Exception e){e.printStackTrace();};
			}

	}

	  
	@Parameters({ "browser", "version", "platform" })
	@Test
	public static void start(String browser, String version, String platform) throws Throwable {
		StartReport();
		System.out.println("!!! Testing Started !!!");
		ArrayList<String> testCases = read.pickTestCase(FileReaderManager.getInstance().getConfigReader().properties.getProperty("TestCaseFilePath"), "Main");
		
		for(String name : testCases)
			
		{
			testCaseName=name;
			createTest(testCaseName);

			try
			{
				System.out.println(" !!! Launching the browser !!!");
				openBrowser(browser);
				Iterator(FileReaderManager.getInstance().getConfigReader().properties.getProperty("TestCaseFilePath"),"Main",testCaseName);
				
				EndReport();
			}catch(IndexOutOfBoundsException e){System.out.println("Test case '"+testCaseName+"' Not Found OR Incorrect");}
		}
		

	}
}





