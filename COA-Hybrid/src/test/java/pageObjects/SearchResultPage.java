package pageObjects;


import static org.testng.Assert.assertTrue;

import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.Select;

import com.aventstack.extentreports.Status;

import testBase.TestBase;

public class SearchResultPage extends TestBase{
	
	public SearchResultPage(){
		PageFactory.initElements(driver, this);
	}
		
	/**
	 * This function select value in select drop down box by there visible text.
	 * @param parent web page name.
	 * @param object target object name
	 * @param value value to be select
	 */
	public void selectFromDropdown(String parent, String object,String value)
	{

	}
	
	
}
