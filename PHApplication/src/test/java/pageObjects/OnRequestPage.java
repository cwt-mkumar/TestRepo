package pageObjects;

import static org.testng.Assert.assertTrue;

import java.io.IOException;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import com.aventstack.extentreports.Status;

import testBase.TestBase;

public class OnRequestPage extends TestBase{ 
	
	public OnRequestPage(){
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
	@FindBy(xpath= ".//*[@id='btnOnRequest']")WebElement OnReqConfirmBooking;	 
	@FindBy(xpath= ".//*[contains(@id,'Collapse_')]/div[3]/div/a")WebElement ContactInfo;
	@FindBy(xpath= ".//*[@id='EditRates_lnkFFC1']")WebElement FulfillNow;
	@FindBy(xpath= ".//*[@id='EditRates_rbCommissionable']")WebElement CommissionableRadioBtn;
	@FindBy(xpath= ".//*[@id='EditRates_txtcomamnt']")WebElement CommissionAmount;
	@FindBy(xpath= ".//*[@id='EditRates_txtRtPerDay']")WebElement RatePerDay;
	@FindBy(xpath= ".//*[@id='EditRates_txtbrkRt']")WebElement BreakfastAmount;
	@FindBy(xpath= ".//*[@id='EditRates_txtConf']")WebElement ConfirmationNum;
	@FindBy(xpath= ".//*[@id='txtRsnforOnRqst']")WebElement ReasonForOnRequestTxtBox;
	@FindBy(xpath= ".//*[@id='ddlCommToHtl']")WebElement ReasonForNotSending;
	@FindBy(xpath= ".//*[@id='txtCommToHtlOther']")WebElement ReasonForNotSendingReason;
	@FindBy(xpath= ".//*[@id='_cntrlcustuddi1']")WebElement HighRoomRate;
	@FindBy(xpath= ".//*[@id='_cntrlcustuddi3']")WebElement LowRoomRate;


	String xPaymentType = "//label[contains(text(),'Payment type')]/following-sibling::select"; 
	String xPaymentMode = ".//label[contains(text(),'Payment mode')]/following-sibling::select";
	String xHotelCommunication = ".//*[@id='ddlHtlEmailFax']";
	String NotificationEMail = ".//*[contains(@id,'cntactinfo_')]/div[1]/div/span[1]/input[2]";
	String xRoomDescription = ".//*[@id='EditRates_ddlRoom']";
	String xRateDescription =".//*[@id='EditRates_ddlRate']";
	String xMealPlan =".//*[@id='EditRates_ddlMealPlan']";
	String xBreakfastAvailability = ".//*[@id='EditRates_ddlMealExInc']";
	String xBookingSource = ".//*[contains(@id,'_ddl_paymentbkngsrc')]";
	String xReasonForOnRequestDdl = ".//*[@id='ddlReasonforOnRqst']";
	String xCommissionAmount = ".//*[@id='EditRates_txtcomamnt']";
	String xHighRoomRate = ".//*[@id='_cntrlcustuddi1']";
	String xLowRoomRate = ".//*[@id='_cntrlcustuddi3']";
	
	
	 public void SelectContactInfoAndNotificationEmail(){
		 waitForElement(ContactInfo, 30, "ContactInfo");
		 clickelement(ContactInfo, "Contact Info link");
		 waitIfElementLocated(NotificationEMail);
		 element = driver.findElement(By.xpath(NotificationEMail));
		 element.clear();
	 }
	
	public void PaymentMode(String PaymentModevalue) throws IOException
	  {
		waitIfElementLocated(xPaymentMode);
		selectFromDropdownUsingOptionValue(PaymentMode, PaymentModevalue);
		waitFor(5000);
	  
	  }

		public void PaymentType(String PaymentTypevalue) throws IOException
		  {
			
			
			waitIfElementLocated(xPaymentType);
			verifyAndEnterDataFromDropdown(PaymentType, PaymentTypevalue,NewCardDetail,NewCard);
			waitFor(5000);
		  
		  }
		

			

	public void FulfillNow() throws IOException
	{
		waitForElement(FulfillNow, 20, "FulfillNow Button");
		clickelement(FulfillNow, "Fulfill Now Button");
		waitFor(2000);
		
	}
	public void RoomDescription(String RoomDescription) throws IOException
	{
		element=	waitIfElementLocated(xRoomDescription);
	    selectFromDropdownUsingOptionValue(element, RoomDescription);
		waitFor(2000);
	}
	public void RateDescription(String RateDescription) throws IOException
	{
	
		element=waitIfElementLocated(xRateDescription);
	    selectFromDropdownUsingOptionValue(element, RateDescription);
		waitFor(2000);
	}
	
	public void CommissionableRadioBtn() throws IOException
	{			
		clickelement(CommissionableRadioBtn, "Commissionable Radio Button");
		waitFor(8000);
	}
	public void CommissionAmount(String CommissionAmountValue) throws IOException
	{		
		element=waitIfElementLocated(xCommissionAmount);
		settext(element,"Commission Amount Text Box",CommissionAmountValue);
		waitFor(2000);
	}
	public void RatePerDay(String RatePerDayValue) throws IOException
	{			
		settext(RatePerDay,"Rate Per Day Text Box",RatePerDayValue);
		waitFor(2000);
	}
	public void MealPlan(String MealPlanValue) throws IOException
	{			
		element=waitIfElementLocated(xMealPlan);
	    selectFromDropdownUsingOptionValue(element, MealPlanValue);
		waitFor(2000);
	}
	public void BreakfastAmount(String BreakfastAmountValue) throws IOException
	{			
		settext(BreakfastAmount,"Breakfast Amount Text Box",BreakfastAmountValue);
		waitFor(2000);
	}
	public void BreakfastAvailability(String BreakfastAvailabilityValue) throws IOException
	{			
		element=waitIfElementLocated(xBreakfastAvailability);
	    selectFromDropdownUsingOptionValue(element, BreakfastAvailabilityValue);
		waitFor(2000);
	}
	public void ConfirmationNum(String ConfirmationNumValue) throws IOException
	{			
		settext(ConfirmationNum,"Confirmation Number Text Box",ConfirmationNumValue);
		waitFor(2000);
	}
	
	public void SetHighRoomRate(String HighRoomRateValue) throws IOException
	{	
		element = driver.findElement(By.xpath(xHighRoomRate));
		element.clear();
		settext(HighRoomRate,"HighRoomRate Text Box",HighRoomRateValue);
		waitFor(1000);
	}
	
	public void SetLowRoomRate(String LowRoomRateValue) throws IOException
	{	
		element = driver.findElement(By.xpath(xLowRoomRate));
		element.clear();
		settext(LowRoomRate,"LowRoomRate Text Box",LowRoomRateValue);
		waitFor(1000);
	}
	
	
	public void BookingSource(String BookingSourceValue) throws IOException
	{			
		element=waitIfElementLocated(xBookingSource);
	    selectFromDropdownUsingOptionValue(element, BookingSourceValue);
		waitFor(2000);
	}
	public void ReasonForOnRequestDdl(String ReasonForOnRequestDdlValue) throws IOException
	{			
		element=waitIfElementLocated(xReasonForOnRequestDdl);
	    selectFromDropdownUsingOptionValue(element, ReasonForOnRequestDdlValue);
		waitFor(2000);
	}
	public void ReasonForOnRequestTxtBox(String ReasonForOnRequestTxtBoxValue) throws IOException
	{			
		settext(ReasonForOnRequestTxtBox,"Reason For On Request Text Box",ReasonForOnRequestTxtBoxValue);
		waitFor(2000);
	}
	
	public void HotelCommunication(String HotelCommunicationValue) throws IOException
	  {

		waitFor(2000);
		waitIfElementLocated(xHotelCommunication);
	    selectFromDropdownUsingOptionValue(HotelCommunication, HotelCommunicationValue);
	    waitFor(1000);
	  
	  }
	
	public void ReasonForNotSendingOnRequestPage(String ReasonForNotSendingValueOnRequestPage) throws IOException
	  {
		
		waitForElement(ReasonForNotSending,5,"ReasonForNotSending");
	    selectFromDropdownUsingOptionValue(ReasonForNotSending, ReasonForNotSendingValueOnRequestPage);
	    waitFor(2000);
	  
	  }

	public void ReasonForNotSendingReasonOnRequestPage(String ReasonForNotSendingReasonValueOnRequestPage) throws IOException
	  {
		
		waitForElement(ReasonForNotSendingReason, 20, "ReasonForNotSendingReason");
		settext(ReasonForNotSendingReason, "ReasonForNotSendingReasonValue", ReasonForNotSendingReasonValueOnRequestPage);
	    waitFor(2000);
	  
	  }
	
	
	public void clickConfirmOnReqButton() throws Throwable
	{
	try{
		waitForElement(OnReqConfirmBooking,5, "Confirm Booking");
		waitFor(2000);
		clickelement_ConfirmBookingButton(OnReqConfirmBooking, "ConfirmBookingButton");
		waitFor(2000);
	}
		catch (NullPointerException ex) {
	    	screenShotPath = captureScreenShot();           	
	    	System.out.println("Result : Fail");
	    	test.log(Status.FAIL, "Something goes wrong with clickConfirmOnReqButton() function on onRequest Page");
	    	assertTrue(screenShotPath.isEmpty());
	    }
	}

	
}
