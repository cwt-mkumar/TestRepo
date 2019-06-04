package EndToEndTest;

import java.io.IOException;
import java.lang.reflect.Method;
//import org.apache.LOGGER4j.LOGGERger;
import org.testng.SkipException;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Listeners;
import org.testng.annotations.Test;

import managers.PageObjectManager;
import pageObjects.HotelSearchPage;
import pageObjects.SearchResultPage;
import testBase.TestBase;


@Listeners({testUtils.TestListener.class })

public class Sprint extends TestBase {
	//static LOGGERger LOGGER = LOGGERger.getLOGGERger(EndToEndTest.class);
	public boolean classExecutionFlag = false;
	public boolean testExecutionFlag = false; 
	public Sprint() throws IOException {
	
	}
	
	/**
	 * Code to check the execution run mode of Scenario(Class)
	 * based on TestController MasterSheet.
	 * Skip the execution if run mode is 'No'
	 * 
	 *@author IGTPSL Automation
	 *
	 */
	
	@BeforeClass
	public void checkSuiteExecutionFlag() 
	{
		String suiteName = this.getClass().getSimpleName();
		if(testControllerMasterMap.containsKey(suiteName) == false) {
			LOGGER.info("No Entry of " + suiteName + " in test Controller Master Sheet");
			classExecutionFlag = false;
			throw new SkipException("Skipping test method");
		}else if(testControllerMasterMap.containsKey(suiteName) == true) 
		{
			String runMode = testControllerMasterMap.get(suiteName);
			if(runMode.equalsIgnoreCase("No")) 
			{
				classExecutionFlag = false;
				LOGGER.info("Test Suite Name: " + suiteName + "  Run Mode: " +runMode);
				throw new SkipException("Skipping test method");
			}else if(runMode.equalsIgnoreCase("Yes")) 
			{
				classExecutionFlag = true;
			}
			LOGGER.info("Test Suite Name: " + suiteName + "  Run Mode: " +runMode);
		}	
	}
	
	
	/**
	 * Code to check the execution run mode of Test Case
	 * Skip the execution if run mode is 'No'
	 * 
	 *@author IGTPSL Automation
	 * @throws IOException 
	 *
	 */
	
	@BeforeMethod
	public void checkTestExecutionFlag(Method method) throws IOException {
		Test test = method.getAnnotation(Test.class);
		if(classExecutionFlag == true) {
			if(testControllerTestCasesMap.containsKey(test.testName()) == false) {
				LOGGER.info("No Entry of " + test.testName() + " in test Controller " + this.getClass().getSimpleName() +" Sheet");
			    return;
			}else if(testControllerTestCasesMap.containsKey(test.testName()) == true) {
				String testRunMode = testControllerTestCasesMap.get(test.testName());
				if(testRunMode.equalsIgnoreCase("No")) {
					testExecutionFlag = false;
				}else if(testRunMode.equalsIgnoreCase("Yes")) {
					//ExcelUtil excelUtil = new ExcelUtil();
					excelUtil.readTestData(this.getClass().getSimpleName(), test.testName());
					//excelUtil.readPaxData(this.getClass().getSimpleName(), test.testName());
					//excelUtil.readPaxData();
					testExecutionFlag = true;
				}
			}
		}
	}
	
	
	@Test(testName = "TC001", priority=1)
	public void endToEndTest5() {
		if(testExecutionFlag==false) {
			throw new SkipException("Skipping test method");
		}
		try {
			PageObjectManager pageObjectManager = new PageObjectManager();
			test = extent.createTest("TA-5 - Make a search for 1Adult2Children2Room");
			openBrowser("Chrome");
			navigateTo_HomePage(envVariablesMap.get("URL"));
			pageObjectManager.getHotelSearchPage().ClickHotelLink();
			pageObjectManager.getHotelSearchPage().SelectDestination();
			pageObjectManager.getHotelSearchPage().SelectCheckInCheckOutDate();
			pageObjectManager.getHotelSearchPage().SelectRoomsANDPAX();
			pageObjectManager.getHotelSearchPage().ClickSearchNowButton();
			closeBrowser();
			
		}
		catch (final Exception e) {
			LOGGER.info("Exception in endToEndTest5");
		}
	}
	
	
	}
	

	
	