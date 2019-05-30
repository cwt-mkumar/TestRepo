package Driver;

import java.awt.AWTException;
import java.io.IOException;
import java.util.List;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;


import managers.PageObjectManager;
import pageObjects.HotelSearchPage;
import pageObjects.SearchResultPage;
import testBase.TestBase;
/**
 * @author IGT
 *
 */
public class ActionCaller extends TestBase {
	public Boolean exitOnFailureFlag=false;
	public String filePath;
	public String sheetName;
	public Boolean partialMatch=false;
	public Integer testData=1;
	public String[][] testDataTable=null;
	PageObjectManager pageObjectManager = new PageObjectManager(driver);
	HotelSearchPage hotelSearchPage;
	SearchResultPage selectTravelerPage;
	//TestDataReader dataReader;
	
	public ActionCaller(WebDriver driver){
		super(driver);
	}


	/*public String getValue(String var)
	{
		var=var.replace("{", "").replace("}","");
		if(var.contains("$"))
		{
			return getVariable(var.replace("$","").trim());
		}

		return null;
	}*/
	
	public String getData(String data,int iteration)
	{
		String pattern = "\\{.+?\\}";
	    Pattern r = Pattern.compile(pattern);
	    
	    // Now create matcher object.
	    Matcher m = r.matcher(data);
	    while (m.find())
	    {
	    	String temp=m.group();
	        //System.out.println(temp);	        
	        //data=data.replace(temp, getValue(temp,iteration));
	    } 
	    
	    return data;
	}
	
	/**
	 * actionCaller method executes the action with the data by identifying it with the combination of sheetName+ObjectName
	 * @param parent Sheet name 
	 * @param object Object name 
	 * @param action Action name to be performed
	 * @param data Data Value to be executed
	 * @throws IOException
	 * @throws AWTException 
	 */
	public void actionCaller(String parent,String object,String action,String data) throws IOException, AWTException, Throwable
	{	
		System.out.println(object+">>>>>>>>>>>>>>>"+data);
		
		if (data.equalsIgnoreCase("skip"))
		{
			return;
		}
		
		else if(action.equalsIgnoreCase("launch"))
		{
			openBrowser(data);
		}
				
		else if(action.equalsIgnoreCase("settext"))
		{	
			pageObjectManager.getHotelSearchPage().settext(parent, object, data);
			//settext(parent, object, data);
		}
		
				
		else if(action.equalsIgnoreCase("selectdropdownvalue"))
		{
			
			pageObjectManager.getSearchResultPage().selectFromDropdown(parent, object, data);
		}
		else if(action.equalsIgnoreCase("selectdropdownindex"))
		{
			selectFromDropdown(parent, object, Integer.parseInt(data));
		}
		
		else if(action.equalsIgnoreCase("selectFromDropdown"))
		{
			pageObjectManager.getSearchResultPage().selectFromDropdown(parent, object, data);
		}
		
	
		else if(action.equalsIgnoreCase("click"))
		{
			
			click(parent, object);
		}

		
		else if(action.equalsIgnoreCase("close"))
		{
			closeBrowser();
		}
		
		else if(action.equalsIgnoreCase("clear"))
		{
			clearTextbox(parent, object);
		}
		else if(action.equalsIgnoreCase("WaitUntilFound"))
		{
			waitForElementPresent(parent, object, Integer.parseInt(data));
		}
		else if(action.startsWith("wait("))
		{
			data = (action.split("\\("))[1].replace(")", "");
			waitFor(Integer.parseInt(data));
		}
		
		
		
		
		else if(action.equalsIgnoreCase("waitForElementAndClick"))
		{
			
			waitForElementPresent(parent, object, Integer.parseInt(data));
			click(parent, object);
			
			
		}
		
		else if(action.equalsIgnoreCase("clickSpecificValue"))
		{
			
			clickSpecificValue(parent, object, data);
					
		}
		
		//isElementPresent
		else if(action.equalsIgnoreCase("isElementPresent"))
		{
			Boolean elementPresent=isElementPresent(parent, object);
			if(elementPresent)
			{
				System.out.println("ObjectPresent"+data);
			}
			else
			{
				System.out.println("Object Not Present"+data);
			}
			
			
			
		}
		

		else if(action.equalsIgnoreCase("WaitUntilClickable"))
		{
			waitUntilClickable(parent, object);
		}
		
		else if(action.equalsIgnoreCase("closeBrowser"))
		{
			closeBrowser();
		}
		
		else
		{
			System.out.println("INCORRECT ACTION :"+action+"parent,object,data,iteration,optional are :"+parent+">>"+object+">>"+data);
		}
		
		
	}
	
}
