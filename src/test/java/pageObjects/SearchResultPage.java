package pageObjects;


import static org.testng.Assert.assertTrue;

import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.Select;

import com.aventstack.extentreports.Status;

import testBase.TestBase;

public class SearchResultPage extends TestBase{
	
	public SearchResultPage(WebDriver driver){
		super(driver);
	}
		
	/**
	 * This function select value in select drop down box by there visible text.
	 * @param parent web page name.
	 * @param object target object name
	 * @param value value to be select
	 */
	public void selectFromDropdown(String parent, String object,String value)
	{
		try {
			System.out.println("---------------------------------------------");
            System.out.println("Action : SelectFromDropdown");
            System.out.println("Step   : Select "+value+" on "+orMap.get(parent+"-"+object).get("LogicalName"));           
			Select select = new Select(findElement(parent,object));
			select.selectByVisibleText(value.trim());
			System.out.println("Result : Pass");
			
			test.log(Status.PASS, value+" on "+orMap.get(parent+"-"+object).get("LogicalName")+ " selected Successfully");
		} catch (NoSuchElementException e) {
			screenShotPath = captureScreenShot();                  
              System.out.println("Result : Fail");
              test.log(Status.FAIL, "Select "+value+" could not be selected on "+ parent+"-"+object);
              assertTrue(screenShotPath.isEmpty());
		}
	}
	
	
}
