package pageObjects;
import static org.testng.Assert.assertTrue;

import java.io.IOException;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import com.aventstack.extentreports.Status;

import testBase.TestBase;

public class SelectTravelerPage extends TestBase{
	
	public SelectTravelerPage(){
		PageFactory.initElements(driver, this);
	}
	
	 public static String screenShotPath = null;
	String xpath;
	
	@FindBy(xpath= ".//label[contains(text(),'Payment mode')]/following-sibling::select") WebElement PaymentMode;
	@FindBy(xpath= "//label[contains(text(),'Payment type')]/following-sibling::select")WebElement PaymentType;	 
    @FindBy(xpath= ".//*[contains(@id,'AddNewCardDiv')]/span/a")WebElement NewCard; 
	@FindBy(xpath= ".//*[contains(@id,'newcardNumber')]")WebElement NewCardDetail ;
	@FindBy(xpath= ".//*[@id='ddlHtlEmailFax']")WebElement HotelCommunication ;
	@FindBy(xpath= ".//*[@id='divConfBkng']/div/div[1]/a/span[2]/em")WebElement ConfirmBooking;	 
	@FindBy(xpath= ".//*[contains(@id,'Collapse_')]/div[3]/div/a")WebElement ContactInfo;
	@FindBy(xpath= ".//*[@id='ddlCommToHtl']")WebElement ReasonForNotSending;
	@FindBy(xpath= ".//*[@id='Traveller_txt_ExtractFromPNR']")WebElement BookAgainExtractFromPNR;
	@FindBy(xpath= ".//*[@id='TravellerDtlFromPNR']/div[1]/div/a/span")WebElement ExtractTravellerDetails;
	@FindBy(xpath= ".//*[@id='txtCommToHtlOther']")WebElement ReasonForNotSendingReason;
	@FindBy(xpath= ".//*[@id='ddlbrk']")WebElement BreakfastDropdown;
	@FindBy(xpath= ".//*[@id='txtbrkamnt']")WebElement BreakfastAmountTextBox;
	@FindBy(xpath= ".//*[@id='ddlsvc0']")WebElement AdditionalServicesDropdown;
	@FindBy(xpath= ".//*[@id='txtsvcamnt0']")WebElement AdditionalServicesAmountTextBox;
	@FindBy(xpath= ".//*[@id='_cntrlcustuddi2']")WebElement MissedSavingsCode; 
	@FindBy(xpath= ".//*[@id='_cntrlcustuddi4']")WebElement RealizedSavingsCode; 
	@FindBy(xpath= ".//*[@id='_cntrlcustuddi1']")WebElement HighRoomRate;
	@FindBy(xpath= ".//*[@id='_cntrlcustuddi3']")WebElement LowRoomRate;



	String NotificationEMail = ".//*[contains(@id,'cntactinfo_')]/div[1]/div/span[1]/input[2]";
	String xHighRoomRate = ".//*[@id='_cntrlcustuddi1']";
	String xLowRoomRate = ".//*[@id='_cntrlcustuddi3']";

	
	  
	 public void SelectContactInfoAndNotificationEmail(){
		 waitForElement(ContactInfo, 30, "ContactInfo");
		 clickelement(ContactInfo, "Contact Info link");
		 waitIfElementLocated(NotificationEMail);
		 element = driver.findElement(By.xpath(NotificationEMail));
		 element.clear();
		 waitFor(3000);
	 }
	
	public void PaymentMode(String PaymentModevalue) throws IOException
	  {
		waitForElement(PaymentMode,5,"Payment Mode");
		selectFromDropdownUsingOptionValue(PaymentMode, PaymentModevalue);
		waitFor(5000);
	  
	  }

		public void PaymentType(String PaymentTypevalue) throws IOException
		  {
			
			
			waitForElement(PaymentType,5,"Payment Type");
			verifyAndEnterDataFromDropdown(PaymentType, PaymentTypevalue,NewCardDetail,NewCard);
			waitFor(5000);
		  
		  }
		

			public void HotelCommunication(String HotelCommunicationValue) throws IOException
			  {
				
				waitForElement(HotelCommunication,5,"HotelCommunication");
			    selectFromDropdownUsingOptionValue(HotelCommunication, HotelCommunicationValue);
			    waitFor(2000);
			  
			  }
			
			public void ReasonForNotSending(String ReasonForNotSendingValue) throws IOException
			  {
				
				waitForElement(ReasonForNotSending,5,"ReasonForNotSending");
			    selectFromDropdownUsingOptionValue(ReasonForNotSending, ReasonForNotSendingValue);
			    waitFor(2000);
			  
			  }

			public void ReasonForNotSendingReason(String ReasonForNotSendingReasonValue) throws IOException
			  {
				
				waitForElement(ReasonForNotSendingReason, 20, "ReasonForNotSendingReason");
				settext(ReasonForNotSendingReason, "ReasonForNotSendingReasonValue", ReasonForNotSendingReasonValue);
			    waitFor(2000);
			  
			  }
			
			
			

			public void clickConfirmBookingButton() throws Throwable
			{
			try{
				waitForElement(ConfirmBooking,5, "Confirm Booking");
				waitFor(2000);
				clickelement(ConfirmBooking, "ConfirmBookingButton");
				waitFor(2000);
			}
			catch (NullPointerException ex) {
            	screenShotPath = captureScreenShot();           	
            	System.out.println("Result : Fail");
            	test.log(Status.FAIL, "Something goes wrong with clickConfirmBookingButton() function on selectTraveler Page");
            	assertTrue(screenShotPath.isEmpty());
            }	
			
}
			
		
			

			public void BookAgainExtractFromPNR(String PNRValue) throws IOException
			{
			
				waitForElement(BookAgainExtractFromPNR,5,"BookAgainExtractFromPNR");
				clickelement(BookAgainExtractFromPNR, "Traveller Info Extract from PNR in Book Again Flow");
				settext(BookAgainExtractFromPNR,"Traveller Info Extract from PNR in Book Again Flow",PNRValue);
				waitFor(2000);
				
			}
			public void BookAgainExtractTravellerDetails() throws IOException
			{
			
				waitForElement(ExtractTravellerDetails,5,"ExtractTravellerDetails");
				waitForElement(ExtractTravellerDetails, 30, "Extract Traveller's details Button in Book Again flow");
				clickelement(ExtractTravellerDetails, "Extract Traveller's details Button in Book Again flow");
				waitFor(6000);
			}	
			
			public void SelectBreakfastWithAmount(String Breakfast, String BreakfastAmount) throws IOException
			  {
				
				
				waitForElement(BreakfastDropdown,5,"Breakfast Dropdown");
				selectFromDropdownUsingOptionValue(BreakfastDropdown, Breakfast);
				waitFor(2000);
				waitForElement(BreakfastAmountTextBox, 5, "BreakfastAmountTextBox");
				settext(BreakfastAmountTextBox, "BreakfastAmount TextBox", BreakfastAmount);
			    waitFor(2000);
			  
			  }
			
			public void SelectAdditionalServicesWithAmount(String AdditionalServices, String AdditionalServicesAmount) throws IOException
			  {
				
				
				waitForElement(AdditionalServicesDropdown,5,"AdditionalServices Dropdown");
				selectFromDropdownUsingOptionValue(AdditionalServicesDropdown, AdditionalServices);
				waitFor(2000);
				waitForElement(AdditionalServicesAmountTextBox, 5, "AdditionalServicesAmount TextBox");
				settext(AdditionalServicesAmountTextBox, "AdditionalServicesAmount TextBox", AdditionalServicesAmount);
			    waitFor(2000);
			  
			  }
	
			public void MissedSavingCode(String MissedSavingCode) throws IOException
            {
                
                waitForElement(MissedSavingsCode,5,"MissedSavingCode");
              selectFromDropdownUsingOptionValue(MissedSavingsCode, MissedSavingCode);
              waitFor(2000);
            
            }
			
			
			public void RealizedSavingCode(String RealizedSavingCode) throws IOException
            {
                
                waitForElement(RealizedSavingsCode,5,"RealizedSaving Code");
              selectFromDropdownUsingOptionValue(RealizedSavingsCode, RealizedSavingCode);
              waitFor(2000);
            
            }

			public void SelectHighRoomRate(String HighRoomRateValue) throws IOException
			  {
				
				
				waitForElement(HighRoomRate,5,"HighRoomRate Text Box");
				element = driver.findElement(By.xpath(xHighRoomRate));
				element.clear();
				settext(HighRoomRate, "HighRoomRate TextBox", HighRoomRateValue);
			    waitFor(2000);
			  
			  }
			
			public void SelectLowRoomRate(String LowRoomRateValue) throws IOException
			  {
				
				
				waitForElement(LowRoomRate,5,"LowRoomRate Text Box");
				element = driver.findElement(By.xpath(xLowRoomRate));
				element.clear();
				settext(LowRoomRate, "LowRoomRate TextBox", LowRoomRateValue);
			    waitFor(2000);
			  
			  }
}
