package testBase;
import static org.testng.Assert.assertTrue;

import java.io.File;
import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Properties;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.logging.Logger;

import org.apache.commons.io.FileUtils;
//import org.apache.log4j.Logger;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.ElementNotVisibleException;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.NoAlertPresentException;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.ie.InternetExplorerDriver;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.SkipException;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.AfterSuite;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.BeforeSuite;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Optional;
import org.testng.annotations.Parameters;

import com.aventstack.extentreports.ExtentReports;
import com.aventstack.extentreports.ExtentTest;
import com.aventstack.extentreports.MediaEntityBuilder;
import com.aventstack.extentreports.Status;
import com.aventstack.extentreports.reporter.ExtentHtmlReporter;
import com.aventstack.extentreports.reporter.configuration.ChartLocation;
import com.aventstack.extentreports.reporter.configuration.Theme;

import managers.FileReaderManager;
import testUtils.ExcelUtil;
import testUtils.MyLogger;



public class TestBase
{
  public static WebDriver driver;
  protected WebElement element;
  protected String strXPath;
  public static String screenShotPath;
  static Boolean objectHighlight;
  protected Properties CWTConfigprop;
  protected static Properties Configprop;
  public static String screenshotPath;
  public static DesiredCapabilities caps;
  String NewCardNo = FileReaderManager.getInstance().getConfigReader().properties.getProperty("NewCardNo") ;

	
    protected final static Logger LOGGER=Logger.getLogger(Logger.GLOBAL_LOGGER_NAME);
	public static HashMap<String, String> testControllerMasterMap = new HashMap<String, String>();
	public static HashMap<String, String> testControllerTestCasesMap = new HashMap<String, String>();
	public static HashMap<String, String> envVariablesMap = new HashMap<String, String>();
	public static HashMap<String, String> testData = new HashMap<String, String>();
	//public static Logger log = Logger.getLogger(TestBase.class.getName());
	static ExtentHtmlReporter htmlReporter;
	public static ExtentReports extent;
	public static ExtentTest test;
	public ExcelUtil excelUtil;
	public static String browserName = null;
	String startTime = new SimpleDateFormat("dd_MM_yyyy_HHmm").format(new Date());
	String testReportPath = System.getProperty("user.dir") + "/TestResults/AutomationExecutionReport_"+ startTime + ".html";

	
	@BeforeSuite
	public void initializeLogger(){
		 try {
		      MyLogger.setup();
		    } catch (IOException e) {
		      e.printStackTrace();
		      throw new RuntimeException("Problems with creating the log files");
		 }
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
		 LOGGER.info("Application opened successfully");
		 test.log(Status.PASS, "Open '" + ApplicationURL +"' successfully in browser");
		 }
	 
		public static void closeBrowser(){
			try{
			driver.quit();
			test.log(Status.PASS, "Driver closed Successfully");
			LOGGER.info("Driver closed Successfully");
		}
			catch (Exception e) {
				  screenShotPath = captureScreenShot();                  
	              System.out.println("Result : Fail");
	              test.log(Status.FAIL, "Driver not closed");
	              assertTrue(screenShotPath.isEmpty());
	              }
			}
		
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
			 * wait for given interval of time until it find desired object.
			 * @param parent web page name.
			 * @param object target object name.
			 * @param time max time to wait.
			 */
			public Boolean waitForElement(WebElement xpath,int time, String LogicalName)
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
							if(xpath == null)
							{
								Thread.sleep(1000);
							}
							else
							{
								System.out.println("Result : Pass and total wait was "+i);
								test.log(Status.PASS, "Element: "+LogicalName+ " found Successfully");
								return true;
								
							}
						}catch(ElementNotVisibleException e){
							
							Thread.sleep(1000);}
					}
				} catch (Exception e) {
					  screenShotPath = captureScreenShot();                  
		              System.out.println("Result : Fail");
		              test.log(Status.FAIL, "element not found");
		              assertTrue(screenShotPath.isEmpty());
		              }
				
				return false;
				
			}
			
			/**
			 * This function returns text contained by an object.
			 * @param parent web page name.
			 * @param object target object name
			 * @return Text within object
			 */
			public String getTextContained(String xpath, String LogicalName)
			{
				try {
					System.out.println("---------------------------------------------");
					System.out.println("Action : getTextContained");
				
					element = driver.findElement(By.xpath(xpath));
					highlightElement(element);

					String s=element.getText();
					System.out.println("Text Contained:"+s);

					if(element!=null)
					{
						System.out.println("Result : Pass");						 
						test.log(Status.PASS, "Text Contained: "+s);
					}
					
					return element.getText();			
				} catch (Exception e) {
					screenShotPath = captureScreenShot();                  
					System.out.println("Result : Fail");
		            test.log(Status.FAIL, "element not found");	
				    assertTrue(screenShotPath.isEmpty());
				}
				return "";
					
				
			}
			/**
			 * This function click on button/Link.
			 * @param parent web page name.
			 * @param object target object name.
			 */
			public void clickelement(WebElement xpath, String LogicalName) 
			{
		            try 
		            {
		            	System.out.println("---------------------------------------------");
			            System.out.println("Action : Click");
			            System.out.println("Step   : Click on "+LogicalName);
		            	element =xpath;
		            	highlightElement(element);
		            	if(!element.isSelected())
		            	element.click();
		            	System.out.println("Result : Pass");
		            	
		                //reporter.Report(ReportStatus.Pass, "Click", "Click on "+orMap.get(parent+"-"+object).get("LogicalName"));
		                test.log(Status.PASS, "Clicked successfully on '" + LogicalName +"'");
		            }
		            catch (NullPointerException ex) {
		            	screenShotPath = captureScreenShot();
		            	
		            	System.out.println("Result : Fail");
		            	test.log(Status.FAIL, "Unable to click on '" + LogicalName +"'");
		            	assertTrue(screenShotPath.isEmpty());
		            }		

			}
			
			public void clickelement_ConfirmBookingButton(WebElement xpath, String LogicalName) throws Throwable 
			{
		            try 
		            {
		            	System.out.println("---------------------------------------------");
			            System.out.println("Action : Click");
			            System.out.println("Step   : Click on "+LogicalName);
		            	element =xpath;
		            	highlightElement(element);
		            	if(!element.isSelected())
		            	element.click();
		            	System.out.println("Result : Pass");
		            	//verifyPageURL("bookingconfirmation");
		            	
		                //reporter.Report(ReportStatus.Pass, "Click", "Click on "+orMap.get(parent+"-"+object).get("LogicalName"));
		                test.log(Status.PASS, "Clicked successfully on '" + LogicalName +"'");
		            }
		            catch (NullPointerException ex) {
		            	screenShotPath = captureScreenShot();
		            	
		            	System.out.println("Result : Fail");
		            	test.log(Status.FAIL, "Unable to click on '" + LogicalName +"'");
		            	assertTrue(screenShotPath.isEmpty());
		            }		

			}
			
			public boolean isAlertPresent() 
			{ 
			    try 
			    { 
			        driver.switchTo().alert().accept(); 
			        return true; 
			    }    
			    catch (NoAlertPresentException Ex) 
			    { 
			        return false; 
			    }   
			}  
		  /**
			 * waitIfElementLocated method will wait for the object until it is visible and ready for an operation to be
			 * performed on it 
			 * @param parent
			 * @param object
			 */
			public WebElement waitIfElementLocated(String xpath) 
			{
				try
				{

					System.out.println("---------------------------------------------");
					System.out.println("Action : WaitUntilElementIsLocated");
					
					
					WebDriverWait wait = new WebDriverWait((WebDriver) driver,50);
					wait.until(ExpectedConditions.presenceOfElementLocated(By.xpath(xpath)));
					System.out.println("Result : Pass");
				}catch(Exception e){
					
					screenShotPath = captureScreenShot();                  
					System.out.println("Result : Fail");
		            test.log(Status.FAIL, "element not found");	
				    assertTrue(screenShotPath.isEmpty());
					}
				
				   element = findElement(xpath);
		           highlightElement(element);
		           return element;
			}
			
			/**
			 * Returns all the values of drop down list box.
			 * @param page web page name
			 * @param object target object name.
			 * @return list of all values of drop down list.
			 */
			public List<String> getDropdownValues(WebElement xpath)
			{
				List<String> list=new ArrayList<String>();
				try 
				{	
					element=xpath;
					highlightElement(xpath);
					List<WebElement> option=new Select(element).getOptions();
					for(WebElement elmnt : option)
					{
						list.add(elmnt.getText());
					}
					
				} catch (NullPointerException e) {
					 
				System.out.println("Object Not Found");
				screenShotPath = captureScreenShot();                  
	            test.log(Status.FAIL, "element not found");	
			    assertTrue(screenShotPath.isEmpty());
				
				}
				return list;
				
			}			   
			   
			
			
			
			public void verifyAndEnterDataFromDropdown(WebElement xpath, String PaymentType, WebElement NewCardDetail, WebElement NewCard) throws IOException
		    {
		          
		           
		           String action="";
		           try {
		                  
		                  Select select = new Select(xpath);
		                  highlightElement(xpath);
		                  List<String> options= getDropdownValues(xpath);
		                  for(String DropdownOptions : options)
		                  {
		                        System.out.println("Data: "+PaymentType);
		                        System.out.println("Data: "+DropdownOptions);
		                        
		                        if(DropdownOptions.contains(PaymentType))
		                        {
		                               System.out.println("In Data");
		                               select.selectByVisibleText(DropdownOptions.trim());
		                               System.out.println("Result : Pass");
		                               
		                               action="performed";
		                               break;
		                        }
		                        else
		                               System.out.println("Check for the next option in the dropdown");     
		                  }
		                  if(!action.equals("performed"))
		                  {
		                	  NewCard.click();
		                	  NewCardDetail.sendKeys(NewCardNo);                           
		                  }                
		                  test.log(Status.PASS, "Select  "+PaymentType+" successfully");
		           }
		           catch (Exception e) {
		        	      screenShotPath = captureScreenShot();                  
		                  System.out.println("Result : Fail");
		                  test.log(Status.FAIL, "'" + PaymentType +"' not selected successfully",MediaEntityBuilder.createScreenCaptureFromPath(screenShotPath).build());
		                  assertTrue(screenShotPath.isEmpty());
		           }
		           
		    }

			
			/**
			 * This function will select value from the drop down list on the basic of their option value.
			 * @param parent web page name
			 * @param object target object name
			 * @param value option value of drop down list
			 * @throws IOException 
			 */
			public void selectFromDropdownUsingOptionValue(WebElement xpathValue,String value, String LogicalName) throws IOException
			{
				try {
					System.out.println("---------------------------------------------");
		            System.out.println("Action : SelectFromDropdown");
		            highlightElement(xpathValue);
		            Select select = new Select(xpathValue);
					select.selectByVisibleText(value.trim());
					System.out.println("Result : Pass");
					//reporter.Report(ReportStatus.Pass, "SelectValue", "Select "+value+" on "+orMap.get(parent+"-"+object).get("LogicalName"));
					test.log(Status.PASS, "Select '" + value +"' successfully"+"in"+ LogicalName);
				} catch (Exception e) {
					
					screenShotPath = captureScreenShot();
					test.log(Status.FAIL, "'" + value +"' not selected successfully",MediaEntityBuilder.createScreenCaptureFromPath(screenShotPath).build());
					System.out.println("Result : Fail");
					 assertTrue(screenShotPath.isEmpty());
				}
			}
			
			/**
			 * verifyTextContained method will verify the text contained on given location with data.
			 * @param parent
			 * @param object
			 * @param text
			 * @throws IOException 
			 */
			public void verifyTextContained(WebElement xpath, String text) throws IOException
			{
				boolean result=false;
				try 
				{			
					System.out.println("---------------------------------------------");
			        System.out.println("Action : VerifyTextContained");
			        element=xpath;
			        highlightElement(xpath);
			        //String previousString = text.replaceAll("\\s","");
			        String previousString = text.trim();
			        String afterString = element.getText();
			       // String afterString = element.getText().replaceAll("\\s","");
					//result=element.getText().trim().contains(text);
			        result=(afterString.trim()).contains(previousString);
			        System.out.println("Expected String : "+text);
			        System.out.println("Actual String   : "+afterString);
			              if(result)
			              {
			                     System.out.println("Result : Pass");
			                     //reporter.Report(ReportStatus.Pass, "VerifyText", orMap.get(parent+"-"+object).get("LogicalName") + " contains message:"+text);
			                     test.log(Status.PASS, "Text: "+ "'"+ text+"'"+ "displayed on Page");
			              }
			              else
			              {
			                    
			            	screenShotPath = captureScreenShot();
			      			test.log(Status.FAIL, "'"+afterString+"' displayed on Page",MediaEntityBuilder.createScreenCaptureFromPath(screenShotPath).build());
			      			System.out.println("Result : Fail");
			      			 assertTrue(screenShotPath.isEmpty());
			              }
			       } catch (NullPointerException e) {
			    	   screenShotPath = captureScreenShot();
		     			test.log(Status.FAIL, "some error displayed on Page",MediaEntityBuilder.createScreenCaptureFromPath(screenShotPath).build());
		     			System.out.println("Result : Fail");
		     			 assertTrue(screenShotPath.isEmpty());
			       }
			       
			       
			}

			 public void waitTillTextMatches(WebElement xpath, String BookingStatus) throws IOException
			   {
				   int counter = 0;
				   try
				   {
					   System.out.println("----Wait Till Text Matches-----");
					   String BookingText = xpath.getText();
					   //System.out.println("BokingText--------------------- "+BookingText );
					   while(BookingText.contains(BookingStatus) && counter <= 180)
					   {
						  
						   waitFor(1000);
						   BookingText = xpath.getText();
						   counter++;
					   }  
					   
				   }catch(Exception e){
					   screenShotPath = captureScreenShot();
						test.log(Status.FAIL, "Status not Matched",MediaEntityBuilder.createScreenCaptureFromPath(screenShotPath).build());
						System.out.println("Result : Fail");
						 assertTrue(screenShotPath.isEmpty());
				   }
			   }
			

		  
		  


			/**
			 * Method to capture screenshot
			 * @param fileName
			 * @return screenShotPath
			 */
			public static  String captureScreenShot() {
				
				try {
					File outputFile = ((TakesScreenshot) driver).getScreenshotAs(OutputType.FILE);
					screenShotPath = FileReaderManager.getInstance().getConfigReader().properties.getProperty("EnvScreenShotPath") + new SimpleDateFormat("dd_MM_yyyy_HHmmss").format(new Date()) + ".GIF";
					Thread.sleep(300);
					FileUtils.copyFile(outputFile, new File(screenShotPath));
				} catch (final Exception e) {
				  }
				return screenShotPath;
			}
			/**
		   * This function replaces a string variable type from old data to new data and is being used in CWTconfig.properties
		   * to replace xpath
		   */
			
			public String replaceText(String OldText,String NewText, String xPath)
			{
				xPath=xPath.replace(OldText, NewText);
				return xPath;	
			}
			
			
			/**
			 * This function locates element by using id,name,css and xpath
			 * @param page locator type
			 * @param object locator path or name 
			 * @return WebElement
			 * @throws IOException
			 */

			WebElement findElementBY(String eleXPath, String LocatorType) 
			{
				element=null;
				String type=null;
				try
				{
					type=LocatorType;	
					String locator=eleXPath;
		            
				
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
					if(objectHighlight)
					{
						highlightElement(element);
					}
				}catch(NoSuchElementException e){}
				}catch(NullPointerException npe){}
				return element;
			}
			
			public boolean acceptAlert() throws IOException
			 {
			           try{
			                  System.out.println("---------------------------------------------");
			                  driver.switchTo().alert().accept();
			                  System.out.println("Action : AcceptAlertBox");
			                  System.out.println("Status   : Pass");
			                  test.log(Status.PASS, "Alert Pop up is displayed");
			                  //count++;
			           }catch(NoAlertPresentException e){
			        	   screenShotPath = captureScreenShot();
							test.log(Status.FAIL, "No Alert Pop up is displayed",MediaEntityBuilder.createScreenCaptureFromPath(screenShotPath).build());
							System.out.println("Result : Fail");
							 assertTrue(screenShotPath.isEmpty());
			           }
			           return true;
			 }
			
			
			
			public WebElement findElement(String eleXPath) 
		    {
		           element=null;
		           
		           try
		           {
		                  element= driver.findElement(By.xpath(eleXPath));
		                  objectHighlight=Boolean.valueOf(FileReaderManager.getInstance().getConfigReader().properties.getProperty("ObjectHighlight").trim().toLowerCase());           
		                  if(objectHighlight)
		                  {
		                        highlightElement(element);
		                  }
		           }catch(NoSuchElementException e){}
		           
		           return element;
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
			
			public boolean verifyPageURL(String URL)throws IOException
			{
				
				WebDriverWait wait = new WebDriverWait((WebDriver) driver,50);
				wait.until(ExpectedConditions.urlContains(URL));
				waitFor(5000);
				boolean blnResult = false;
				String strstrActual = driver.getCurrentUrl();
				System.out.println("---------------------------------------------");
				System.out.println("Action : VerifyURL");
				if (strstrActual.contains(URL))
				{	
					blnResult = true;
					System.out.println("Result : Pass");						
					//reporter.createXMLFile(count,"VerifyTitle", "Expected title found:", strTestData); 
					test.log(Status.PASS, "User is on " + "'"+ URL+ "'"+ "Page");
				}else{
					blnResult = false;
					screenShotPath = captureScreenShot();
					test.log(Status.FAIL, "User is not redirected to correct Page",MediaEntityBuilder.createScreenCaptureFromPath(screenShotPath).build());
					System.out.println("Result : Fail");
					 assertTrue(screenShotPath.isEmpty());
				}
				return blnResult;
			}
			/**
			 * This function enter text on text box/text area.
			 * @param parent web page name
			 * @param object target object name
			 * @param data text need to enter
			 * @throws IOException 
			 */
			public void settext(WebElement element,String LogicName,String data) throws IOException
			{
				 try {
					 	System.out.println("---------------------------------------------");
			            System.out.println("Action : EnterData");
			            System.out.println("Step   : Enter "+LogicName);
			            
//			            element.clear();
					 	element.sendKeys(data.trim());	
					 	System.out.println("Result : Pass");
						test.log(Status.PASS, "Enter '"+data+"' in "+LogicName);
				 }
		            catch (NullPointerException ex) {
		            	ex.printStackTrace();
		            
		            	screenShotPath = captureScreenShot();
						test.log(Status.FAIL, "Enter '"+data+"' in "+LogicName+" Operation Failed",MediaEntityBuilder.createScreenCaptureFromPath(screenShotPath).build());
						System.out.println("Result : Fail");
						 assertTrue(screenShotPath.isEmpty());
				
		            }
				 
			}
			
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


			/*  @AfterSuite
				public static void tearDown() {
					String screenshotPath = null;
					try {
						screenshotPath = captureScreenShot();
						LOGGER.info("Test Case Completed-- Closing the browser");
			    		test.log(Status.INFO, "Test Case Completed-- Closing the browser", MediaEntityBuilder.createScreenCaptureFromPath(screenshotPath).build());
						driver.quit();
					} catch (final Exception e) {
					}
				}*/
				 
				

				
				@BeforeTest
				@Parameters ("browser")
				public void startReport(@Optional String browser) {
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
					
					if(browser==null) {
						browserName = envVariablesMap.get("Browser");
					}else {
						browserName = browser;	
					}
					htmlReporter = new ExtentHtmlReporter(testReportPath);
					htmlReporter.config().setTestViewChartLocation(ChartLocation.BOTTOM);
			        htmlReporter.config().setChartVisibilityOnOpen(true);
			        htmlReporter.config().setTheme(Theme.STANDARD);
			        htmlReporter.config().setDocumentTitle("Delta Automation Report");
			        htmlReporter.config().setEncoding("utf-8");
			        htmlReporter.config().setReportName("PNR Creation");
					extent = new ExtentReports();
					extent.setSystemInfo("Host Name", hostname);
					extent.setSystemInfo("Operating System", System.getProperty("os.name"));
					extent.setSystemInfo("URL", envVariablesMap.get("URL"));
					extent.setSystemInfo("Browser", browserName);
					extent.setSystemInfo("App Environment", envVariablesMap.get("Environment"));
					extent.attachReporter(htmlReporter);
				}
					
				
				
				
				/**
				 * 
				 */
				@AfterSuite
				public void endReport() {
					extent.flush();
				}
				
				/**
				 * Method to read TestController sheet and based on 'MasterSheet' hashmap
				 * create hash map for test cases to execute in each scenario.
				 * 
				 * @author Sujit.K
				 */
				
				@BeforeSuite
				public void readControllerTestData() {
					excelUtil = new ExcelUtil();
					excelUtil.readTestController();
				}
			
				
				
				
	}




