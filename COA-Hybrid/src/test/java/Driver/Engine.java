package Driver;

import static org.testng.Assert.assertTrue;

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
import com.aventstack.extentreports.Status;
import com.aventstack.extentreports.reporter.ExtentHtmlReporter;
import com.aventstack.extentreports.reporter.configuration.ChartLocation;
import com.aventstack.extentreports.reporter.configuration.Theme;

import org.testng.annotations.Parameters;



import org.openqa.selenium.WebDriver;

import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.openqa.selenium.support.PageFactory;

import TestDataReader.ReadTestCase;
import managers.FileReaderManager;
import managers.PageObjectManager;
import pageObjects.HotelSearchPage;
import pageObjects.SearchResultPage;

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
	public static String nextSheetName=null;
	static String data=null;
	public static String testCaseName=null;
	public static ReadTestCase read= new ReadTestCase();
	//public static ReadObjectRepository readOR= new ReadObjectRepository();
	//public XmlReport reporter=null;
	String startTime = null;
	String endTime =null;
	DesiredCapabilities caps;
	 //public static Map <String,Map<String,String>> orMap=readObjectsheet(FileReaderManager.getInstance().getConfigReader().properties.getProperty("ObjectRepositoryPath"));
	

	

	public Properties prop2 = new Properties();
			
	/**
	 * @param pageName
	 * @param objectReference
	 * @param data
	 * @throws Throwable 
	 */
	
	public Engine(){
		PageFactory.initElements(driver, this);
	}
		

	public static void callTestCases(String sheetName,String testCaseName){
		
		//Map<String, Map<String, String>> testCaseMap=read.readTestCaseSheet(testCaseFilePath,sheetName);
		
		//Map<String, String> testValueMap=testCaseMap.get(testCaseName);
		
		if(testCaseName.equalsIgnoreCase("TA-1 - Make a search for 1Adult1Room")){
			try {
				PageObjectManager pageObjectManager = new PageObjectManager();
				pageObjectManager.getHotelSearchPage().ClickHotelLink();
				pageObjectManager.getHotelSearchPage().SelectDestination();
				pageObjectManager.getHotelSearchPage().SelectCheckInCheckOutDate();
				pageObjectManager.getHotelSearchPage().SelectRoomsANDPAX();
				pageObjectManager.getHotelSearchPage().ClickSearchNowButton();
				closeBrowser();
			}
				catch (Exception e) {
					  screenShotPath = captureScreenShot();                  
		              System.out.println("Result : Fail");
		              test.log(Status.FAIL, "Error occured while executing test case"+ testCaseName);
		              assertTrue(screenShotPath.isEmpty());
		              }
			}
		
		else if(testCaseName.equalsIgnoreCase("TA-2 - Make a search for 2Adult2Room")){
			try {
				PageObjectManager pageObjectManager = new PageObjectManager();
				pageObjectManager.getHotelSearchPage().ClickHotelLink();
				pageObjectManager.getHotelSearchPage().SelectDestination();
				pageObjectManager.getHotelSearchPage().SelectCheckInCheckOutDate();
				pageObjectManager.getHotelSearchPage().SelectRoomsANDPAX();
				pageObjectManager.getHotelSearchPage().ClickSearchNowButton();
				closeBrowser();
			}
				catch (Exception e) {
					  screenShotPath = captureScreenShot();                  
		              System.out.println("Result : Fail");
		              test.log(Status.FAIL, "Error occured while executing test case"+ testCaseName);
		              assertTrue(screenShotPath.isEmpty());
		              }
			}
		
		
		else if(testCaseName.equalsIgnoreCase("TA-3 - Make a search for 1Adult1Children1Room")){
			try {
				PageObjectManager pageObjectManager = new PageObjectManager();
				pageObjectManager.getHotelSearchPage().ClickHotelLink();
				pageObjectManager.getHotelSearchPage().SelectDestination();
				pageObjectManager.getHotelSearchPage().SelectCheckInCheckOutDate();
				pageObjectManager.getHotelSearchPage().SelectRoomsANDPAX();
				pageObjectManager.getHotelSearchPage().ClickSearchNowButton();
				closeBrowser();
			}
				catch (Exception e) {
					  screenShotPath = captureScreenShot();                  
		              System.out.println("Result : Fail");
		              test.log(Status.FAIL, "Error occured while executing test case"+ testCaseName);
		              assertTrue(screenShotPath.isEmpty());
		              }
			}
		
		else if(testCaseName.equalsIgnoreCase("TA-4 - Make a search for 2Adult2Children2Room")){
			try {
				PageObjectManager pageObjectManager = new PageObjectManager();
				pageObjectManager.getHotelSearchPage().ClickHotelLink();
				pageObjectManager.getHotelSearchPage().SelectDestination();
				pageObjectManager.getHotelSearchPage().SelectCheckInCheckOutDate();
				pageObjectManager.getHotelSearchPage().SelectRoomsANDPAX();
				pageObjectManager.getHotelSearchPage().ClickSearchNowButton();
				closeBrowser();
			}
				catch (Exception e) {
					  screenShotPath = captureScreenShot();                  
		              System.out.println("Result : Fail");
		              test.log(Status.FAIL, "Error occured while executing test case"+ testCaseName);
		              assertTrue(screenShotPath.isEmpty());
		              }
			}
		
		
		else if(testCaseName.equalsIgnoreCase("TA-5 - Make a search for 1Adult2Children2Room")){
			try {
				PageObjectManager pageObjectManager = new PageObjectManager();
				pageObjectManager.getHotelSearchPage().ClickHotelLink();
				pageObjectManager.getHotelSearchPage().SelectDestination();
				pageObjectManager.getHotelSearchPage().SelectCheckInCheckOutDate();
				pageObjectManager.getHotelSearchPage().SelectRoomsANDPAX();
				pageObjectManager.getHotelSearchPage().ClickSearchNowButton();
				closeBrowser();
			}
				catch (Exception e) {
					  screenShotPath = captureScreenShot();                  
		              System.out.println("Result : Fail");
		              test.log(Status.FAIL, "Error occured while executing test case"+ testCaseName);
		              assertTrue(screenShotPath.isEmpty());
		              }
			}
		
		}
		
	
	/**
	 * @param testCaseFilePath Path to the Test Data workbook
	 * @param sheetName The Name of the sheet in Test Data workbook
	 * @param testCaseName Name of the test case to be executed
	 * @throws Throwable 
	 */
	private static void Iterator(String testCaseFilePath, String sheetName,String testCaseName)
			throws Throwable {
		//Condition to stop furthe execution
		
			Map<String, Map<String, String>> testCaseMap=read.readTestCaseSheet(testCaseFilePath,sheetName);
			
			Map<String, String> testValueMap=testCaseMap.get(testCaseName);
			
/*			System.out.println(testValueMap);
			for(Map.Entry m:testValueMap.entrySet())
			{
				System.out.println(m.getValue());
			}*/
		
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
						nextSheetName = or[1].trim();
//						if(nextSheetName.contains("Checkpoint"))
//						{
//							nextSheetName=nextSheetName.replaceAll("\\d", "").trim();
//							System.out.println(nextSheetName);
//							String [] warningOR = data.split(";");
//							
//							for(String s : warningOR)
//							{
//								Iterator(testCaseFilePath, nextSheetName/*(AsSheetName)*/  ,s/*(AsTestCaseName)*/);
//							}
//							continue;
//						}
//						else if(nextSheetName.equalsIgnoreCase("FillPaxDetails")||nextSheetName.equalsIgnoreCase("verifyPaxDetails"))
//						{
//
//							String testName[]=(data.replace("{","").replace("}","")).split(",");
//							for(int j=0;j<testName.length;j++)
//							{
//								//calling Iterator method recursively
//								Iterator(testCaseFilePath, nextSheetName/*(AsSheetName)*/  ,testName[j]/*(AsTestCaseName)*/);
//							}
//							continue;
//						} 
						//calling Iterator method recursively
						callTestCases(nextSheetName/*(AsSheetName)*/  ,data/*(AsTestCaseName)*/);
						continue;
						}

					

					else if(objectReference.equalsIgnoreCase("Launch"))
					{
						navigateTo_HomePage(data);
						continue;
					}
					


					else if(objectReference.equalsIgnoreCase("closebrowser"))
					{
						closeBrowser();
						continue;
					}

					/*setData : Keyword will store the data into variables which will be used by verifyWithVariable later on*/

					/*else if(objectReference.contains("SetData"))
					{

						pageName=sheetName;

						String[] s =data.split("}");
						for(String ss : s)
						{
							String[] varNameAndValue=ss.replace("{", "").split("\\=");


							if( varNameAndValue[1].contains("\""))
							{
								setVariable(varNameAndValue[0], varNameAndValue[1].replace("\"", ""));
							}
							else
							{
								objectReference=varNameAndValue[1];
								data = varNameAndValue[0];
								callActions(pageName, objectReference, data);
							}
						}
						continue;

					}*/

					/** verifyWithVariable: KeyWord will search the data separated by ";" in the OR and the Action for this should be VerifyTextContained  **/

					
					/**$ sign helps to identify and handle the Pax**/

					

					// To ignore the steps from execution.
					else if(data.equalsIgnoreCase("Skip"))
					{
						continue;
					}
					

					else{
					System.out.println("#####"+pageName+">>>"+objectReference+">>>"+data);

					}

					}

				catch (Exception e){e.printStackTrace();};
			}

	}

	  
	@Parameters({ "browser", "version", "platform" })
	@Test
	public static void start(String browser, String version, String platform) throws Throwable {
		StartReport();
		System.out.println("!!! Testing Started !!!");
		ArrayList<String> testCases = read.pickTestCase(FileReaderManager.getInstance().getConfigReader().properties.getProperty("TestCaseFilePath"), "main");
		
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





