package testBase;
import static org.testng.Assert.assertTrue;

import java.io.File;
import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Random;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.io.FileUtils;
import org.apache.log4j.Logger;
//import org.codehaus.plexus.util.FileUtils;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.openqa.selenium.By;
import org.openqa.selenium.ElementNotVisibleException;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.ie.InternetExplorerDriver;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.annotations.AfterSuite;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.BeforeSuite;
import org.testng.annotations.BeforeTest;

import com.aventstack.extentreports.ExtentReports;
import com.aventstack.extentreports.ExtentTest;
import com.aventstack.extentreports.MediaEntityBuilder;
import com.aventstack.extentreports.Status;
import com.aventstack.extentreports.reporter.ExtentHtmlReporter;
import com.aventstack.extentreports.reporter.configuration.ChartLocation;
import com.aventstack.extentreports.reporter.configuration.Theme;

import TestDataReader.ReadObjectRepository;
import managers.FileReaderManager;



public class TestBase extends ReadObjectRepository
{
  public static WebDriver driver;
  public Map<String,String> globalVariables;
  protected WebElement element;
  protected String strXPath;
  public static String screenShotPath;
  public static Logger log = Logger.getLogger(TestBase.class.getName());
  static Boolean objectHighlight;
  protected Properties CWTConfigprop;
  protected static Properties Configprop;
  public static String screenshotPath;
  public static DesiredCapabilities caps;
  String NewCardNo = FileReaderManager.getInstance().getConfigReader().properties.getProperty("NewCardNo") ;
  public static ExtentTest test;
  public static ExtentHtmlReporter htmlReporter;
  public static  ExtentReports extent;
  public static  String browserName = null;


  

  
	public TestBase(WebDriver driver) {
		this.driver=driver;
}

	public static void openBrowser(String browser){
		if(browser.equalsIgnoreCase("firefox")){
			driver=new FirefoxDriver();
		}
		else if(browser.equalsIgnoreCase("chrome")){
			System.setProperty("webdriver.chrome.driver","./drivers/chromedriver.exe");
			driver=new ChromeDriver();
		}
		else if(browser.equalsIgnoreCase("ie")){
			System.setProperty("webdriver.ie.driver","./drivers/IEDriverServer.exe");
			caps=DesiredCapabilities.internetExplorer();
			caps.setCapability(InternetExplorerDriver.IGNORE_ZOOM_SETTING,true);
			caps.setCapability(InternetExplorerDriver.INTRODUCE_FLAKINESS_BY_IGNORING_SECURITY_DOMAINS,true);
			driver=new InternetExplorerDriver(caps);
		}
		else{
			driver=new FirefoxDriver();	
		}
		driver.manage().window().maximize();
	}

	 public static void navigateTo_HomePage(String ApplicationURL) {
		 driver.get(ApplicationURL);
		 //test.log(Status.PASS, "Open '" + ApplicationURL +"' successfully in browser");
		 test.log(Status.PASS, "Open '" + ApplicationURL +"' successfully in browser");
		 }
	 
		public static void closeBrowser(){
			driver.quit();
		}
		
		public void verifyObjectExist(String parent, String object)throws IOException
		{
			try {
				System.out.println("---------------------------------------------");
				System.out.println("Action : VerifyObjectExist");
				element = findElement(parent,object);
				System.out.println("Step : Verify object in the page with"+object);
				//System.out.println("Result : Pass");
				test.log(Status.PASS, orMap.get(parent+"-"+object).get("LogicalName") + "found Successfully");
				  
				
				//return true;
			}catch (NoSuchElementException e) {
				screenShotPath = captureScreenShot();                  
	              System.out.println("Result : Fail");
	              test.log(Status.FAIL, "element not found");
	              assertTrue(screenShotPath.isEmpty());
			}
		}	

		/**
		 * verifies Element Present
		 * @param parent
		 * @param object
		 * @return true if Element Present else false
		 * @throws IOException
		 */
		public Boolean isElementPresent(String parent, String object)throws IOException
		{

			try{
				element = findElement(parent,object);
				if(element!=null)
				{
					//System.out.println("Result : Pass");
					test.log(Status.PASS, orMap.get(parent+"-"+object).get("LogicalName") + "found Successfully");  
					return(true);
				}
			}
			catch(NoSuchElementException e){
					screenShotPath = captureScreenShot();                  
		              System.out.println("Result : Fail");
		              test.log(Status.FAIL, "element not found");
		              assertTrue(screenShotPath.isEmpty());
				return(false);
			} 
			return(true);
		}
			

		
		/**
		 * Verifies the page exists
		 * @return true if page found,else false
		 * @throws IOException
		 */
		/*public boolean verifyPageExist(String data)throws IOException
		{
			boolean b=false;
			try{
				System.out.println("---------------------------------------------");
				System.out.println("Action : verifyPageExist");
				exeStartTime=getCurrentTime(dateFormatForTestCase);
				System.out.println("Step : Expected Page "+data);
				if(data.startsWith(driver.getCurrentUrl().toString()))
				{
					System.out.println("Result : Pass");
					reporter.createXMLFile(count,"verifyPageExist","Expected page found",exeStartTime,getCurrentTime(dateFormatForTestCase),"pass","");   
					
					b= true;
				}

			} catch (NoSuchElementException e) {
				screenShotPath = captureScreenShot();                  
	              System.out.println("Result : Fail");
	              test.log(Status.FAIL, "current Page is different"+ data);
	              assertTrue(screenShotPath.isEmpty());
				
				
				b= false;

			}
			return b;
		}

		
		*//**
		 * switch to new window
		 * @param parent
		 * @param object
		 * @param data
		 *//*
		public void switchToNewWindow(String parent,String object,String data)
		{
			
			String newAdwinID =null;
			Iterator<String> iter = null;
			System.out.println("---------------------------------------------");
			System.out.println("Action : switchToNewWindow");
			exeStartTime=getCurrentTime(dateFormatForTestCase);
			windowIds = driver.getWindowHandles(); // get  window id of current window
			iter = windowIds.iterator();   
			
				mainWindowID=iter.next();
				newAdwinID=iter.next();
			
			
	try{
	        driver.switchTo().window(newAdwinID);
	        System.out.println("Result : Pass");
	        reporter.createXMLFile(count, "switchToNewWindow", orMap.get(parent+"-"+object).get("LogicalName"), exeStartTime, getCurrentTime(dateFormatForTestCase), "pass","");
	         
	  
	        
		}catch (NoSuchElementException e)
		{
			captureScreenshot(count);
			System.out.println("Result : Fail");
			reporter.createXMLFile(count, "switchToNewWindow", orMap.get(parent+"-"+object).get("LogicalName"), exeStartTime, getCurrentTime(dateFormatForTestCase), "fail",saveNewScreenShot(count));}

	count++;
		
	        
		}
		
		
		*//**
		 * Switch the focus back to main window
		 * @param parent
		 * @param object
		 * @param data
		 *//*
		public void switchToMainWindow(String parent,String object,String data)
		{

			System.out.println("---------------------------------------------");
			System.out.println("Action : switchToMainWindow");
			exeStartTime=getCurrentTime(dateFormatForTestCase);
			try{
				driver.switchTo().window(mainWindowID);
				System.out.println("Result : Pass");
				reporter.createXMLFile(count,"switchToMainWindow",orMap.get(parent+"-"+object).get("LogicalName"),exeStartTime, getCurrentTime(dateFormatForTestCase), "pass","");

			}catch (NoSuchElementException e)
			{
				captureScreenshot(count);
				System.out.println("Result : Fail");
				reporter.createXMLFile(count, "switchToMainWindow",orMap.get(parent+"-"+object).get("LogicalName") , exeStartTime, getCurrentTime(dateFormatForTestCase), "fail",saveNewScreenShot(count));}

			
			count++;

		}
		
		
		*//**
		 * clickPopUPButton switches the focus to the pop-up widow and clicks on the object mentioned in OR.
		 * @param parent
		 * @param object
		 * @param data
		 *//*
		public void clickPopUPButton(String parent,String object,String data)
		{
			System.out.println("---------------------------------------------");
			System.out.println("Action : clickPopUPButton");
			exeStartTime=getCurrentTime(dateFormatForTestCase);
			Set<String> windowId = driver.getWindowHandles();    // get  window id of current window
			Iterator<String> itererator = windowId.iterator();   
			String mainWinID = itererator.next();
			String  newAdwinID = itererator.next();
			try{
				driver.switchTo().window(newAdwinID);
				element = findElement(parent,object);
				element.click();
				System.out.println("Result : Pass");
				reporter.createXMLFile(count, "clickPopUPButton", orMap.get(parent+"-"+object).get("LogicalName"), exeStartTime, getCurrentTime(dateFormatForTestCase), "pass","");
				
			}catch(Exception e){
				captureScreenshot(count);
				System.out.println("Result : Fail");
				reporter.createXMLFile(count, "clickPopUPButton", orMap.get(parent+"-"+object).get("LogicalName"), exeStartTime, getCurrentTime(dateFormatForTestCase), "fail",saveNewScreenShot(count));}    
			finally
			{
				driver.switchTo().window(mainWinID);
			}
			count++;
		}*/
		
		
		public void navigateTo(String url)
		{
			System.out.println("---------------------------------------------");
	        System.out.println("Action : NavigateTo");
	        System.out.println("Step   : Navigate to '"+url+"'");
			try{
	        driver.navigate().to(url.trim());
	        test.log(Status.PASS, "Navigate browser to Url: " + url + "found Successfully");
			}
			catch (NoSuchElementException e) {
				screenShotPath = captureScreenShot();                  
	              System.out.println("Result : Fail");
	              test.log(Status.FAIL,"Not able to navigate the browser to Url: " + "url");
	              assertTrue(screenShotPath.isEmpty());	
			}
						}

		/**
		 * Returns url the the current page
		 * @return URL 
		 */
		public String getUrl()
		{
			
			return driver.getCurrentUrl();
		}
		
		

		
		
		/**
		 * closeNewWindow closes the new opened window.
		 * @param parent
		 * @param object
		 */
		/*public void closeNewWindow(String parent,String object)
		{
			System.out.println("---------------------------------------------");
	        System.out.println("Action : CloseNewWindow");
			System.out.println("Step   : Closing the new opened window");
	        exeStartTime=getCurrentTime(dateFormatForTestCase);
			try {
				driver.close();
				reporter.createXMLFile(count,"CloseNewWindow", orMap.get(parent+"-"+object).get("LogicalName"),exeStartTime,getCurrentTime(dateFormatForTestCase),"pass","");
				System.out.println("Result : Pass");
				}
			catch (Exception ex){
				reporter.createXMLFile(count,"CloseNewWindow", orMap.get(parent+"-"+object).get("LogicalName"),exeStartTime,getCurrentTime(dateFormatForTestCase),"fail",saveNewScreenShot(count));
				System.out.println("Result : Fail");
			}
			count++;

		}*/
		
		
		/**
		 * closeBrowser method will close the browser.This method is also responsible for saving the report.
		 */
		
		/**
		 * wait for given interval of time until it find desired object.
		 * @param parent web page name.
		 * @param object target object name.
		 * @param time max time to wait.
		 */
		public Boolean waitForElementPresent(String parent, String object,int time)
		{
			int i=0;
			System.out.println("---------------------------------------------");
	        System.out.println("Action : WaitForObject");
			try 
			{
				for(;i<time;i++)
				{
					try
					{
						if(findElement(parent,object) == null)
						{
							Thread.sleep(1000);
						}
						else
						{
							System.out.println("Result : Pass and total wait was "+i);
							//reporter.createXMLFile(count,"waitForElementPresent","Expecting  '"+object+"' in "+orMap.get(parent+"-"+object).get("LogicalName"),exeStartTime,getCurrentDate(dateFormatForTestCase),"pass","");
							return true;
							
						}
					}catch(ElementNotVisibleException e){
						
						Thread.sleep(1000);}
				}
			} catch (Exception e) {
			
			}
			//count++;
			return false;
			
		}
		
		/**
		 * wait for given interval of time until it find desired object.
		 * @param parent web page name.
		 * @param object target object name.
		 * @param time max time to wait.
		 */
		
		public WebElement waitForElementClickable(String eleXPath,int time)
	    {
	           try
	           {

	                  System.out.println("---------------------------------------------");
	                  System.out.println("Action : WaitUntilClickable");

	                  WebDriverWait wait = new WebDriverWait((WebDriver) driver,time);
	                  wait.until(ExpectedConditions.presenceOfElementLocated(By.xpath((eleXPath))));
	                  System.out.println("Result : Pass " + eleXPath);
	                  //reporter.createXMLFile(count,"Click", "Click on "+orMap.get(parent+"-"+object).get("LogicalName"),exeStartTime,getCurrentDate(dateFormatForTestCase),"pass","");
	           }catch (NoSuchElementException e) {
					screenShotPath = captureScreenShot();                  
		              System.out.println("Result : Fail");
		              test.log(Status.FAIL, "Element not found");
		              assertTrue(screenShotPath.isEmpty());
	                  return null;
	                  //reporter.createXMLFile(count,"Click", "Click on "+orMap.get(parent+"-"+object).get("LogicalName"),exeStartTime,getCurrentDate(dateFormatForTestCase),"fail",saveNewScreenShot(count));}
	           }
	           element = driver.findElement(By.xpath(eleXPath));
	           highlightElement(element);
	           return element;
	           
	    }

		
		/**
		 * Clears text box
		 * @param parent web page name.
		 * @param object target object name.
		 */
		public void clearTextbox(String parent, String object)
		{
			try 
			{	
				System.out.println("---------------------------------------------");
	            System.out.println("Action : ClearTextbox");
	            System.out.println("Step   : Clear "+orMap.get(parent+"-"+object).get("LogicalName"));
			 	element =findElement(parent,object);
			 	element.clear();
			 	System.out.println("Result : Pass");
	            
	        }catch (NoSuchElementException e) {
				screenShotPath = captureScreenShot();                  
	              System.out.println("Result : Fail");
	              test.log(Status.FAIL, "Text Box clear Operation not performed");
	              assertTrue(screenShotPath.isEmpty());
	        	
	        	}

		}

		/**
		 * This function enter text on text box/text area.
		 * @param parent web page name
		 * @param object target object name
		 * @param data text need to enter
		 */
		
		
		public void clickSpecificValue(String parent,String object,String data)
		{
			 try {
				 	System.out.println("---------------------------------------------");
		            System.out.println("Action : EnterData");
		            System.out.println("Step   : Select '"+data+"' in "+orMap.get(parent+"-"+object).get("LogicalName"));
		            strXPath = FileReaderManager.getInstance().getConfigReader().properties1.getProperty("DestinationText");
		      	    strXPath = replaceText("DestinationValue",data,strXPath);
		      	    element = waitForElementClickable(strXPath, 80);
				 	element.click();
				 	System.out.println("Result : Pass");
				 	test.log(Status.PASS, "Select '"+data+"' in "+orMap.get(parent+"-"+object)+ " Successfully");              
	                
			 }
			 catch (NoSuchElementException e) {
					screenShotPath = captureScreenShot();                  
		              System.out.println("Result : Fail");
		              test.log(Status.FAIL, "Enter '"+data+"' in "+parent+"-"+object+" Operation Failed ");
		              assertTrue(screenShotPath.isEmpty());
			 }
			 		
			 
			 
		}
		
		/* public void PressKey(String parent, String object,String data) 
		    {
		    	switch(data.toLowerCase())
		    	{
		    	case "down" :
		    		element.sendKeys(Keys.ARROW_DOWN);
		    		break;
		    	case "up":
		    		element.sendKeys(Keys.ARROW_UP);
		    		break;
		    	case "left":
		    		element.sendKeys(Keys.ARROW_LEFT);
		    		break;
		    	case "enter":
		    		element.sendKeys(Keys.ENTER); 
		    		break;
		    	case "tab":
		    		element.sendKeys(Keys.TAB); 
		    		break;
		    	}

		    }
		    */
		    
			/**
			 * This function click on button/Link.
			 * @param parent web page name.
			 * @param object target object name.
			 */
			public void click(String parent, String object) 
			{
		            try 
		            {
		            	System.out.println("---------------------------------------------");
			            System.out.println("Action : Click");
			            System.out.println("Step   : Click on "+orMap.get(parent+"-"+object).get("LogicalName"));
		            	element =findElement(parent,object);
		            	if(!element.isSelected())
		            	element.click();
		            	System.out.println("Result : Pass");
		            	test.log(Status.PASS, "'"+"Click successfully on "+orMap.get(parent+"-"+object).get("LogicalName")+"'");
		                
		            }
		            catch (NoSuchElementException e) {
						screenShotPath = captureScreenShot();                  
			              System.out.println("Result : Fail");
			              test.log(Status.FAIL, "Click on "+orMap.get(parent+"-"+object).get("LogicalName"));
			              assertTrue(screenShotPath.isEmpty());
			        	
			        	}
			}
			
			
			public String replaceText(String OldText,String NewText, String xPath)
			{
				xPath=xPath.replace(OldText, NewText);
				return xPath;	
			}
			/*public void mouseOver(String parent, String object)
			{
				 try 
		         {
		         	System.out.println("---------------------------------------------");
			            System.out.println("Action : MouseOver");
			            System.out.println("Step   : MouseOver on "+orMap.get(parent+"-"+object).get("LogicalName"));
			            exeStartTime=getCurrentTime(dateFormatForTestCase);
			            element =findElement(parent,object);
			            Actions action = new Actions(driver);
			            action.moveToElement(element);
			            action.perform();
			            System.out.println("Result : Pass");
			            testStepStatusFlag=true;
			            //reporter.Report(ReportStatus.Pass, "Click", "Click on "+orMap.get(parent+"-"+object).get("LogicalName"));
			            reporter.createXMLFile(count,"MouseOver", "MouseOver on "+orMap.get(parent+"-"+object).get("LogicalName"),exeStartTime,getCurrentTime(dateFormatForTestCase),"pass","");
			            
		         }
		         catch (NullPointerException ex) {
		         	captureScreenshot(count);
		         	 testStepStatus=false;
		         	 testStepStatusFlag=false;
		         	System.out.println("Result : Fail");
		         	//reporter.Report(ReportStatus.Fail, "Click", "Click on "+parent+"-"+object+" Operation Failed " + ex.toString());}		
		         	reporter.createXMLFile(count,"MouseOver", "MouseOver on "+orMap.get(parent+"-"+object).get("LogicalName"),exeStartTime,getCurrentTime(dateFormatForTestCase),"fail",saveNewScreenShot(count));}
		         count++;
				
			}*/
			
			//New Function Added by CWT-UAT Automation Team
			
			/**
			 * waitIfElementLocated method will wait for the object until it is visible and ready for an operation to be
			 * performed on it 
			 * @param parent
			 * @param object
			 */
			/*public void waitIfElementLocated(String parent, String object) 
			{
				try
				{

					System.out.println("---------------------------------------------");
					System.out.println("Action : WaitUntilElementIsLocated");
					exeStartTime=getCurrentTime(dateFormatForTestCase);
					String xpath=orMap.get(parent+"-"+object).get("LocatorValue");
					
					WebDriverWait wait = new WebDriverWait((WebDriver) driver,50);
					wait.until(ExpectedConditions.presenceOfElementLocated(By.xpath(xpath)));
					System.out.println("Result : Pass");
					//reporter.createXMLFile(count,"Click", "Click on "+orMap.get(parent+"-"+object).get("LogicalName"),exeStartTime,getCurrentDate(dateFormatForTestCase),"pass","");
				}catch(Exception e){
					captureScreenshot(count);
					testStepStatus=false;
					System.out.println("Result : Fail");
					}
				count++;
			}
			
			*//**
			 * waitUntilVisible method will wait for the object to be visible for 60000 milliseconds.
			 * @param parent
			 * @param object
			 *//*
			public void waitUntilVisible(String parent, String object) 
			{
				try
				{

					System.out.println("---------------------------------------------");
					System.out.println("Action : WaitUntilVisible");
					exeStartTime=getCurrentTime(dateFormatForTestCase);
					element=findElement(parent, object);
					WebDriverWait wait = new WebDriverWait((WebDriver) driver,60000);
					wait.until(ExpectedConditions.visibilityOf(element));
					System.out.println("Result : Pass");
					//reporter.createXMLFile(count,"Click", "Click on "+orMap.get(parent+"-"+object).get("LogicalName"),exeStartTime,getCurrentDate(dateFormatForTestCase),"pass","");
				}catch(Exception e){
					captureScreenshot(count);
					testStepStatus=false;
					System.out.println("Result : Fail");
					//reporter.createXMLFile(count,"Click", "Click on "+orMap.get(parent+"-"+object).get("LogicalName"),exeStartTime,getCurrentDate(dateFormatForTestCase),"fail",saveNewScreenShot(count));}
				}
				count++;
			}*/
			/**
			 * waitUntilClickable method will wait for the object to be clickable for 60000 milliseconds.
			 * @param parent
			 * @param object
			 */
			
			public void waitUntilClickable(String parent, String object) 
			{
				try
				{

					System.out.println("---------------------------------------------");
					System.out.println("Action : WaitUntilClickable");

					element=findElement(parent, object);
					WebDriverWait wait = new WebDriverWait((WebDriver) driver,60000);
					wait.until(ExpectedConditions.elementToBeClickable(element));

					System.out.println("Result : Pass");
					
				} catch (NoSuchElementException e) {
					screenShotPath = captureScreenShot();                  
		              System.out.println("Result : Fail");
		              test.log(Status.FAIL, "Element not found");
		              assertTrue(screenShotPath.isEmpty());
				}
				
			}
			
			
			/**
			 * this function stop execution for given time interval
			 * @param time time in milliseconds for which execution need to be stop.
			 */
			public void waitFor(int time)
			{
				try 
				{
					System.out.println("---------------------------------------------");
		            System.out.println("Action : Waitfor "+time+" MilliSeconds");
					Thread.sleep(time);
				} catch (InterruptedException e){e.printStackTrace();}
			}
			
				
			/**
			 * This function will select value from the drop down list on the basic of their option value.
			 * @param parent web page name
			 * @param object target object name
			 * @param value option value of drop down list
			 */
			public void selectFromDropdownUsingOptionValue(String parent, String object,String value)
			{
				try {
					System.out.println("---------------------------------------------");
		            System.out.println("Action : SelectFromDropdown");
		            System.out.println("Step   : Select "+value+" on "+orMap.get(parent+"-"+object).get("LogicalName"));
		            Select select = new Select(findElement(parent,object));
					select.selectByValue(value.trim());
					System.out.println("Result : Pass");
					test.log(Status.PASS, "Select "+value+" on "+orMap.get(parent+"-"+object).get("LogicalName")+ "select Successfully");
					
				} catch (NoSuchElementException e) {
					screenShotPath = captureScreenShot();                  
		              System.out.println("Result : Fail");
		              test.log(Status.FAIL, "Select "+value+" could not be selected on "+ parent+"-"+object);
		              assertTrue(screenShotPath.isEmpty());
				}
			}
			
			
			
			/**
			 * This function select value in select drop down box based on index number provided
			 * @param parent web page name.
			 * @param object target object name
			 * @param index index value to be selected
			 */
			public void selectFromDropdown(String parent, String object,int index)
			{
				try {
					System.out.println("---------------------------------------------");
		            System.out.println("Action : SelectFromDropdown");
		            System.out.println("Step   : Select index "+index+" on "+orMap.get(parent+"-"+object).get("LogicalName"));
					Select select = new Select(findElement(parent,object));
					select.selectByIndex(index);
					System.out.println("Result : Pass");
					//reporter.Report(ReportStatus.Pass, "SelectValue", "Select index "+index+" on "+orMap.get(parent+"-"+object).get("LogicalName"));
					test.log(Status.PASS, "Select "+index+" on "+orMap.get(parent+"-"+object).get("LogicalName")+ "select Successfully");
				} catch (NoSuchElementException e) {
					screenShotPath = captureScreenShot();                  
		              System.out.println("Result : Fail");
		              test.log(Status.FAIL, "index "+index+" could not be selected on "+ parent+"-"+object);
		              assertTrue(screenShotPath.isEmpty());
				}
			}
			
			/**
			 * This function returns text contained by an object.
			 * @param parent web page name.
			 * @param object target object name
			 * @return Text within object
			 */
			/*public String getTextContained(String parent, String object)
			{
				try {
					System.out.println("---------------------------------------------");
					System.out.println("Action : getTextContained");
					exeStartTime=getCurrentTime(dateFormatForTestCase);
					element=findElement(parent, object);

					String s=element.getText();
					System.out.println("Text Contained:"+s);

					if(element!=null)
					{
						System.out.println("Result : Pass");	
						test.log(Status.PASS, orMap.get(parent+"-"+object).get("LogicalName")+" "+element.getText());
						
						
					}
					count++;

					return element.getText();			
				} catch (Exception e) {
					captureScreenshot(count); 
				System.out.println("Result : Fail");						 
				reporter.createXMLFile(count,"getTextContained", orMap.get(parent+"-"+object).get("LogicalName")+"Not Found",exeStartTime,getCurrentTime(dateFormatForTestCase),"fail",saveNewScreenShot(count));
				testStepStatus=false;}
				count++;
				return "";
					
				
			}*/
			
			/**
			 * Returns value attribute of object
			 * @param parent web page name.
			 * @param object target object name
			 * @return value attribute of object.
			 */
			public String getValue(String parent, String object)
			{
				try {
					element=findElement(parent, object);
					return element.getAttribute("value");			
				} 
				catch (NoSuchElementException e) {
					screenShotPath = captureScreenShot();                  
		              System.out.println("Result : Fail");
		              test.log(Status.FAIL, "getValue function not performed as expected");
		              assertTrue(screenShotPath.isEmpty());
				}
				return null;
			}
			
			
			/*public void VerifyDropDownValues(String parent, String object,String Data)
			{				
				try
				{

					String[] Datavalues=Data.split(",");		
					List<WebElement> options=GetDDValues(parent,object);
					exeStartTime=getCurrentTime(dateFormatForTestCase);

					int k=0;
					int i;


					for(WebElement we:options)  
					{  
						System.out.println("Options:"+we.getText());
						for (i=0; i<Datavalues.length; i++){
							if (we.getText().equals(Datavalues[i])){
								k=k+1;
							} 
						}
					}
					if(k==Datavalues.length)
					{
						reporter.createXMLFile(count,"verifyObjectExist", orMap.get(parent+"-"+object).get("LogicalName")+" Matched",exeStartTime,getCurrentTime(dateFormatForTestCase),"pass","");   
						System.out.println("Matched");
					}
					else
					{
						captureScreenshot(count);
						System.out.println("Result : Fail");
						reporter.createXMLFile(count,"GetAndCheckDDValues", orMap.get(parent+"-"+object).get("LogicalName")+" Values not MAtched",exeStartTime,getCurrentTime(dateFormatForTestCase),"fail",saveNewScreenShot(count));
						System.out.println("Not Matched");	
					}


				}

				catch (NoSuchElementException e) {
					captureScreenshot(count);
					System.out.println("Result : Fail");
					reporter.createXMLFile(count,"verifyObjectExist", orMap.get(parent+"-"+object).get("LogicalName"),exeStartTime,getCurrentTime(dateFormatForTestCase),"fail",saveNewScreenShot(count));}
				count++;   

			}
			*/
			
			
			/**
			 * checkurl method will verify the current URL with the data.
			 * @param parent
			 * @param object
			 * @param Data
			 */
			/*public void checkurl(String parent, String object,String Data)
			{


				try
				{
					String temp=driver.getCurrentUrl(); 
					System.out.println("Expected URL : "+Data);
					System.out.println("Actual URL   : "+temp);
					exeStartTime=getCurrentTime(dateFormatForTestCase);
					if(Data.equals(temp))
					{
						System.out.println("Result : Pass");
						reporter.createXMLFile(count,"checkurl", orMap.get(parent+"-"+object).get("LogicalName")+"Page Redirected Successfully",exeStartTime,getCurrentTime(dateFormatForTestCase),"pass","");   
					}
					else
					{

						System.out.println("Result : Fail");
						captureScreenshot(count);		
						reporter.createXMLFile(count,"checkurl", orMap.get(parent+"-"+object).get("LogicalName")+"Page does not Redirect Successfully",exeStartTime,getCurrentTime(dateFormatForTestCase),"fail",saveNewScreenShot(count));
					}
				}
				catch (NoSuchElementException e) {
					captureScreenshot(count);
					System.out.println("Result : Fail");
					reporter.createXMLFile(count,"checkurl", orMap.get(parent+"-"+object).get("LogicalName")+"Exception Raised",exeStartTime,getCurrentTime(dateFormatForTestCase),"fail",saveNewScreenShot(count));
				}
				count++;   
			}
			*/
			
			
			/*public void verifyTextContained(String parent, String object,String text)
			{
				boolean result=false;
				try 
				{			
					System.out.println("---------------------------------------------");
			        System.out.println("Action : VerifyTextContained");
			        System.out.println("Step   : Verify "+orMap.get(parent+"-"+object).get("LogicalName") + " contains : "+text);		
			        exeStartTime=getCurrentTime(dateFormatForTestCase);
			        element=findElement(parent, object);

			        String previousString = text.trim();
			        String afterString = element.getText();

			        result=(afterString.trim()).contains(previousString);
			        System.out.println("Expected String : "+text);
			        System.out.println("Actual String   : "+afterString);
			              if(result)
			              {
			                     System.out.println("Result : Pass");
			                     
			                     reporter.createXMLFile(count,"VerifyText", orMap.get(parent+"-"+object).get("LogicalName") + " contains :"+text,exeStartTime,getCurrentTime(dateFormatForTestCase),"pass","");
			              }
			              else
			              {
			                    
			                     System.out.println("Result : Fail");
			                     testStepStatus=false;
			                     captureScreenshot(count);
			                     
			                     reporter.createXMLFile(count,"VerifyText", orMap.get(parent+"-"+object).get("LogicalName") + " does not contains : "+text+"  The Actual String present is : "+afterString,exeStartTime,getCurrentTime(dateFormatForTestCase),"fail",saveNewScreenShot(count));
			                     
			              }
			       } catch (NullPointerException e) {
			              captureScreenshot(count);
			              testStepStatus=false;
			              System.out.println("Result : Fail");
			              System.out.println("Element Not Found");

			              reporter.createXMLFile(count,"VerifyText",  orMap.get(parent+"-"+object).get("LogicalName") + " does not contains : "+text+" on specified location ",exeStartTime,getCurrentTime(dateFormatForTestCase),"fail",saveNewScreenShot(count));}

			       count++;
			       
			}
			
			
			
			public void verifyElementVisible(String parent,String object)
			{
				try {
						System.out.println("---------------------------------------------");
						System.out.println("Action : verifyElementVisible");
						System.out.println("Step   : Verify "+orMap.get(parent+"-"+object).get("LogicalName")  );		
						exeStartTime=getCurrentTime(dateFormatForTestCase);
						element=findElement(parent, object);
						
						if(element.isDisplayed())
						{
							System.out.println("Result : Pass");
							reporter.createXMLFile(count,"verifyElementVisible", orMap.get(parent+"-"+object).get("LogicalName") ,exeStartTime,getCurrentTime(dateFormatForTestCase),"pass","");
						}
								
					
						
				} catch (NullPointerException e) {
					captureScreenshot(count);
					 testStepStatus=false;
					System.out.println("Result : Fail");
					reporter.createXMLFile(count,"verifyElementVisible", "Object not found "+ e.toString(),exeStartTime,getCurrentTime(dateFormatForTestCase),"fail",saveNewScreenShot(count));}
				count++; 
					
					
				
			}
			
			
			
			
			public void verifyElementNotVisible(String parent,String object)
			{
				try {
					System.out.println("---------------------------------------------");
					System.out.println("Action : verifyElementNotVisible");
					System.out.println("Step   : Verify "+orMap.get(parent+"-"+object).get("LogicalName")  );		
					exeStartTime=getCurrentTime(dateFormatForTestCase);
					element=findElement(parent, object);

					if(element!=null)
					{
						captureScreenshot(count);
						testStepStatus=false;
						System.out.println("Result : Fail");
						reporter.createXMLFile(count,"verifyElementNotVisible", "Object found ",exeStartTime,getCurrentTime(dateFormatForTestCase),"fail",saveNewScreenShot(count));
						count++;
					}



				} catch (NullPointerException e) {

					testStepStatus=true;
					System.out.println("Result : Pass");
					reporter.createXMLFile(count,"verifyElementNotVisible", "Object found ",exeStartTime,getCurrentTime(dateFormatForTestCase),"pass","");

				}
				count++;

			}
			*/
			
			public void checkRadioButton(String page,String object,int number)
			{
				try {
					element=findElement(page, object);
					
					List <WebElement> listOfElements=element.findElements(By.tagName("tr"));
					
					element=listOfElements.get(1);
					listOfElements=element.findElements(By.tagName("td"));
					element=listOfElements.get(number);
					
					element=element.findElement(By.cssSelector("input[class='radio']"));
					highlightElement(element);
					element.click();	
				} 
				catch (NoSuchElementException e) {
					screenShotPath = captureScreenShot();                  
		              System.out.println("Result : Fail");
		              test.log(Status.FAIL, "checkRadioButton function not performed as expected");
		              assertTrue(screenShotPath.isEmpty());
				}
			}
			

			
			/**
			 * Returns selected value of drop down list box.	
			 * @param page web page name.
			 * @param object target object name.
			 * @return selected value of drop down.
			 */
			/*public String getDropdownValue(String page,String object)
			{
				try 
				{	
					element=findElement(page, object);
					return new Select(element).getFirstSelectedOption().getText();		
					
				} catch (NullPointerException e) { captureScreenshot(count); testStepStatus=false;System.out.println("Object Not Found");}
				return null;
			}

			*//**
			 * Returns all the values of drop down list box.
			 * @param page web page name
			 * @param object target object name.
			 * @return list of all values of drop down list.
			 *//*
			public List<String> getDropdownValues(String page,String object)
			{
				List<String> list=new ArrayList<String>();
				try 
				{	
					element=findElement(page, object);
					List<WebElement> option=new Select(element).getOptions();
					for(WebElement elmnt : option)
					{
						list.add(elmnt.getText());
					}
					
				} catch (NullPointerException e) {captureScreenshot(count); testStepStatus=false;System.out.println("Object Not Found");}
				return list;
			}*/
			
			
			public Boolean isRadioButtonChecked(String parent,String object)
			{
				try {
					return findElement(parent,object).isSelected();
				} 
				
				catch (NoSuchElementException e) {
					screenShotPath = captureScreenShot();                  
		              System.out.println("Result : Fail");
		              test.log(Status.FAIL, "isRadioButtonChecked function not performed as expected");
		              assertTrue(screenShotPath.isEmpty());
				}
				
				return false;
			}
			
			/*public int generateRandomNumber(int minimum,int maximum)
			{
				if(minimum>maximum)
				{
					 throw new IllegalArgumentException("Start cannot exceed End.");
				}
				else
				{
				Random rn = new Random();
				int range = maximum - minimum + 1;
				return rn.nextInt(range) + minimum;
				}
			}
			
			
			WebElement findElement(String eleXPath) 
		     {
		            WebElement element=null;
		            
		            try
		            {
		                   element= driver.findElement(By.xpath(eleXPath));
		                                
		                   if(objectHighlight)
		                   {
		                         highlightElement(element);
		                   }
		            }catch(NoSuchElementException e){}
		            
		            return element;
		     }*/

			
			/**
			 * This function locates element by using id,name,css and xpath
			 * @param page locator type
			 * @param object locator path or name 
			 * @return WebElement
			 * @throws IOException
			 */

			protected WebElement findElement(String page, String object) 
			{
				WebElement element=null;
				String type=null;
				try
				{
					type=orMap.get(page+"-"+object).get("LocatorType");	
					String locator=orMap.get(page+"-"+object).get("LocatorValue");
		            
					if(locator.contains("{&"))
					{                                              
						try
						{
							locator=getData(locator);
						}catch(NullPointerException npe){System.out.println("------>Variables used under locator are not initialize :"+locator);}

					}


				try
				{
					switch(type.toLowerCase())
					{
						case "id" : element= driver.findElement(By.id(locator));break;
						case "name" : element= driver.findElement(By.name(locator));break;
						case "css" : element= driver.findElement(By.cssSelector(locator));break;
						case "xpath" : element= driver.findElement(By.xpath(locator));break;
						case "class" : element= driver.findElement(By.className(locator));break;
						case "link" : element= driver.findElement(By.linkText(locator));break;
						default: System.out.println("'How' String Does Not Match");return null;
					}
					if(objectHighlight=true)
					{
						highlightElement(element);
					}
				}catch(NoSuchElementException e){}
				}catch(NullPointerException npe){System.out.println("Parent:"+page+" and Object: "+object+" not found in Object Repository");}
				return element;
			}
			
		
			private String getData(String data)
		    {
		                    String pattern = "\\{.+?\\}";
		        Pattern r = Pattern.compile(pattern);     
		        // Now create matcher object.
		        Matcher m = r.matcher(data);
		        while (m.find())
		        {
		                    String temp=m.group();
		            //System.out.println(temp);                      
		            data=data.replace(temp, getValue(temp));
		        } 
		        
		        return data;
		    }
		    
		    private String getValue(String var)
		    {                              
		                    if(var.contains("&"))
		                    {
		                                    String var1=var.replace("{", "").replace("}","");                  
		                                    return globalVariables.get(var1.replace("&","").trim());
		                                                     
		                    }
		                    return var;
		    }

		    
			/**
			 * This function locates element by using id,name,css and xpath
			 * @param page locator type
			 * @param object locator path or name 
			 * @return WebElement
			 * @throws IOException
			 */
			List<WebElement> findElements(String page, String object) throws IOException 
			{
				List<WebElement> elements=null;
				String type=orMap.get(page+"-"+object).get("LocatorType");	
				String locator=orMap.get(page+"-"+object).get("LocatorValue");

				if(locator.contains("{$"))
				{                                              
					try
					{
						locator=getData(locator);
					}catch(NullPointerException npe){System.out.println("------>Variables used under locator are not initialize :"+locator);}

				}

				try
				{
					switch(type.toLowerCase())
					{
						case "id" : elements= driver.findElements(By.id(locator));break;
						case "name" : elements= driver.findElements(By.name(locator));break;
						case "css" : elements= driver.findElements(By.cssSelector(locator));break;
						case "xpath" : elements= driver.findElements(By.xpath(locator));break;
						case "class" : elements= driver.findElements(By.className(locator));break;
						case "link" : elements= driver.findElements(By.linkText(locator));break;
						default: System.out.println("'How' String Does Not Match");return null;
					}	
				}catch(NoSuchElementException e){e.printStackTrace();}
				
				if(objectHighlight)
				{
					highlightElements(elements);
				}
				return elements;
			}
			
			/**
			 * This function can be use to highlight the element.
			 * @param element Object
			 */
			public void highlightElement(WebElement element) 
			{  
				JavascriptExecutor js = (JavascriptExecutor) driver;
				js.executeScript("window.scrollTo(0,"+element.getLocation().y+")");
				js.executeScript("arguments[0].setAttribute('style', arguments[1]);", element, "color: Green; border: 2px solid yellow;");  
			} 
			
			public void quit() {
				if (driver != null) {
					driver.quit();
					driver = null;
					
				}
			}
			/**
			 * This function can be use to highlight the elements.
			 * @param elements list of element.
			 */
			public void highlightElements(List<WebElement> elements) 
			{ 
				for(WebElement element : elements)
				{				
					JavascriptExecutor js = (JavascriptExecutor) driver;
					js.executeScript("arguments[0].setAttribute('style', arguments[1]);", element, "color: Green; border: 2px solid yellow;");  
				}
			}
				
			
			
			
		
		
		
		
	
			/*
			public String searchPattern(String sb,String searchData)
            {
                            Pattern pattern = Pattern.compile(searchData);
                            Matcher matcher = pattern.matcher(sb);
            
                            if (matcher.find())
                            {
                                            System.out.println(matcher.group(0));
                                            System.out.println("Result : Passed");
                                            return matcher.group(0);
                            }
                            
                            return "No Match Found for : " + searchData;
            }
			*/
			
			
public  String captureScreenShot() {
				
				try {
					File outputFile = ((TakesScreenshot) driver).getScreenshotAs(OutputType.FILE);
					screenShotPath = FileReaderManager.getInstance().getConfigReader().properties.getProperty("EnvScreenShotPath") + new SimpleDateFormat("dd_MM_yyyy_HHmmss").format(new Date()) + ".GIF";
					Thread.sleep(300);
					FileUtils.copyFile(outputFile, new File(screenShotPath));
				} catch (final Exception e) {
				  }
				return screenShotPath;
			}

				  public static void StartReport()
				  {

				  	  	String hostname = "Unknown";
				  	  	    try
				  	  	    {
				  	  	      InetAddress addr;
				  	  	      addr = InetAddress.getLocalHost();
				  	  	      hostname = addr.getHostName();
				  	  	    }
				  	  	    catch (UnknownHostException ex)
				  	  	    {
				  	  	      System.out.println("Hostname can not be resolved");
				  	  	    }
				  	  	    
				  	  	   String ResultsPath = "TestResults";
					        Random rand = new Random(); 
					        int randomNumber = rand.nextInt(1000); 
					        //System.out.print(randomNumber);
					        String s=Integer.toString(randomNumber);
					        ResultsPath= ResultsPath.concat(s);
					        
					        
				  	  	    String startTime = new SimpleDateFormat("dd_MM_yyyy_HHmm").format(new Date());
				  	  	    String testReportPath = System.getProperty("user.dir")+"/TestResults/AutomationExecutionReport_"+ startTime + ResultsPath+".html";
				  	  	    
				  	  	      browserName = "Chrome";  
				  	  	     //  System.out.println(hostname);
				  	  	    
				  	  	    htmlReporter = new ExtentHtmlReporter(testReportPath);
				  	  	    System.out.println(testReportPath);
				  	  	   System.out.println(htmlReporter);
				  	  	      
				  	  	    htmlReporter.config().setTestViewChartLocation(ChartLocation.BOTTOM);
				  	  	    htmlReporter.config().setChartVisibilityOnOpen(true);
				  	  	    htmlReporter.config().setTheme(Theme.STANDARD);
				  	  	    htmlReporter.config().setDocumentTitle("PH Automation Execution Report");
				  	  	    htmlReporter.config().setEncoding("utf-8");
				  	  	    htmlReporter.config().setReportName("PH Automation Execution Report");
				  	  	    extent = new ExtentReports();
				  	  	    extent.setSystemInfo("Host Name", hostname);
				  	  	    extent.setSystemInfo("Operating System", System.getProperty("os.name"));
				  	  	    extent.setSystemInfo("URL", "https://intuat.cwthotel360.com/v1600/bookingconfirmation.aspx");
				  	  	    extent.setSystemInfo("Browser", browserName);
				  	  	    extent.setSystemInfo("App Environment", "Regression");
				  	  	    extent.attachReporter(htmlReporter);  
				  	  	    
				  }	
				  
				  public static void EndReport()
				  {	
				  	  extent.flush();		  	    
				  }	
				
				  
					public static ExtentTest createTest(String TestCase_Name) throws IOException{
						test = extent.createTest(TestCase_Name);
						return test;
			}
					
					
		}




