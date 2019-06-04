package pageObjects;



import static org.testng.Assert.assertTrue;

import java.io.IOException;

import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;
import org.openqa.selenium.support.PageFactory;

import com.aventstack.extentreports.Status;

import testBase.TestBase;

public class HotelSearchPage extends TestBase{

	public HotelSearchPage(){
		PageFactory.initElements(driver, this);
	}

	
	@FindBy(how=How.XPATH, using=".//li[2]//a[@class='nav-link']") WebElement HotelLink;
	@FindBy(how=How.XPATH, using=".//input[@placeholder='Enter a city, airport or landmark']") WebElement DestinationTextBox;
	@FindBy(how=How.XPATH, using=".//span[contains(text(),'Check-in')]") WebElement CheckInCalender;
	@FindBy(how=How.XPATH, using="descendant::div[contains(@data-date,'26') and contains(@data-month, '1')][5]") WebElement CheckInDate;
	@FindBy(how=How.XPATH, using="descendant::div[contains(@data-date,'27') and contains(@data-month, '1')][5]") WebElement CheckOutDate;
	@FindBy(how=How.XPATH, using=".//select[@name='room']") WebElement RoomDropDown;
	@FindBy(how=How.XPATH, using=".//select[@name='adult']") WebElement AdultsDropDown;
	@FindBy(how=How.XPATH, using=".//select[@name='children']") WebElement ChildrenDropDown;
	@FindBy(how=How.XPATH, using="descendant::input[@type='button' and @value='Search Now'][2]") WebElement SearchNowButton;
	
	public String SelectHotel = ".//*[contains(@id,'htlbkbtn') and contains(@onclick,'hotelID')]" ;
	public String xSelectDestination = ".//span[contains(text(),'DestinationValue')]" ;
	

	
	
	public void ClickHotelLink(){
		waitFor(2000);
		clickelement(HotelLink, "Hotel Link Button");
		waitFor(2000);
	}
	
	
public void SelectDestination() throws IOException
{ 
	try {
	settext(DestinationTextBox, "Destination Text Box",testData.get("DestinationTextBox"));
	waitFor(4000);
	String data = testData.get("SelectDestination");
    xSelectDestination = replaceText("DestinationValue",data,xSelectDestination);
	element = waitForElementClickable(xSelectDestination,50);
 	element.click();
 	System.out.println("Result : Pass");
 	test.log(Status.PASS, "Destination selected successfully");  
}
catch (NoSuchElementException e) {
		screenShotPath = captureScreenShot();                  
         System.out.println("Result : Fail");
         test.log(Status.FAIL, "Error while entering the destination");
         assertTrue(screenShotPath.isEmpty());
}
}



public void SelectCheckInCheckOutDate(){
	try{
		waitFor(2000);
		clickelement(CheckInCalender, "Check-In Calender");
		waitFor(2000);
		
		waitFor(2000);
		clickelement(CheckInDate, "Select Check-In date");
		waitFor(2000);
		waitFor(2000);
		clickelement(CheckOutDate, "Select Check-Out date");
		waitFor(2000);
	}
	catch (NoSuchElementException e) {
		screenShotPath = captureScreenShot();                  
         System.out.println("Result : Fail");
         test.log(Status.FAIL, "Error while selecting the date");
         assertTrue(screenShotPath.isEmpty());
}
}




public void SelectRoomsANDPAX() throws IOException{
	
	try{

	waitFor(2000);
	selectFromDropdownUsingOptionValue(RoomDropDown, testData.get("Rooms"), "Rooms DropDown");
	waitFor(2000);	
	selectFromDropdownUsingOptionValue(AdultsDropDown, testData.get("Adults"),"Adults DropDown");
	waitFor(2000);
	selectFromDropdownUsingOptionValue(ChildrenDropDown, testData.get("Children"),"Children DropDown");
	waitFor(2000);
}

	catch (NoSuchElementException e) {
		screenShotPath = captureScreenShot();                  
         System.out.println("Result : Fail");
         test.log(Status.FAIL, "Error while selecting the Room and PAX");
         assertTrue(screenShotPath.isEmpty());
}
}

public void ClickSearchNowButton() throws IOException{
	waitFor(2000);
	clickelement(SearchNowButton, "SearchNow Button");
	waitFor(2000);
}

}
