package pageObjects;



import static org.testng.Assert.assertTrue;

import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebDriver;

import com.aventstack.extentreports.Status;

import testBase.TestBase;

public class HotelSearchPage extends TestBase{

public HotelSearchPage(WebDriver driver){
	super(driver);
}
	
public void settext(String parent,String object,String data)
{
	 try {
		 	System.out.println("---------------------------------------------");
            System.out.println("Action : EnterData");
            System.out.println("Step   : Enter '"+data+"' in "+orMap.get(parent+"-"+object).get("LogicalName"));
            element =findElement(parent,object);
//            element.clear();
		 	element.sendKeys(data.trim());	
		 	System.out.println("Result : Pass");
		 	test.log(Status.PASS, "Enter '"+data+"' in "+orMap.get(parent+"-"+object).get("LogicalName")+ " Successfully");              
            
	 }
	 catch (NoSuchElementException e) {
			screenShotPath = captureScreenShot();                  
              System.out.println("Result : Fail");
              test.log(Status.FAIL, "Enter '"+data+"' in "+parent+"-"+object+" Operation Failed ");
              assertTrue(screenShotPath.isEmpty());
	 }
	 		

}


}
