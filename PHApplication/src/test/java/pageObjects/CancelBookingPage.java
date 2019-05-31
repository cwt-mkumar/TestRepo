package pageObjects;

import static org.testng.Assert.assertTrue;

import java.io.IOException;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import com.aventstack.extentreports.Status;

import testBase.TestBase;

public class CancelBookingPage extends TestBase {
	
	public CancelBookingPage(){
		PageFactory.initElements(driver, this);
	}
	
	@FindBy(xpath= ".//*[@id='ddlHtlEmailFax']")WebElement HotelCommunicationCancelElement;
	@FindBy(xpath= ".//*[@id='btncontinue']/span[2]/em")WebElement ContinueButton;
	@FindBy(xpath= ".//*[@id='txtCancelReference']")WebElement CancellationRefNum;
	@FindBy(xpath= ".//*[@id='ddlCommToHtl']")WebElement ReasonForNotSendingCancel;
	@FindBy(xpath= ".//*[@id='txtCommToHtlOther']")WebElement ReasonForNotSendingCancelReason;
	@FindBy(xpath= ".//*[@id='ddlCommToHtl']")WebElement ReasonForSending;
	@FindBy(xpath= ".//*[@id='txtCommToHtlOther']")WebElement Reason;
	@FindBy(xpath= ".//*[@id='txtcancellationfee']")WebElement CancallationFeesOnRequest;
	
	
	//String HotelCommunicationCancel = ".//*[@id='ddlHtlEmailFax']";

	
	public void HotelCommunicationCancel(String HotelCommunicationCancel) throws IOException
	  {

		waitForElement(HotelCommunicationCancelElement, 20, "HotelCommunication");
	    selectFromDropdownUsingOptionValue(HotelCommunicationCancelElement, HotelCommunicationCancel);
	    waitFor(2000);
	  
	  }
	
	public void ReasonForNotSendingCancel(String ReasonForNotSendingCancelValue) throws IOException
	  {
		
		waitForElement(ReasonForNotSendingCancel, 20, "ReasonForNotSendingCancel");
	    selectFromDropdownUsingOptionValue(ReasonForNotSendingCancel, ReasonForNotSendingCancelValue);
	    waitFor(2000);
	  
	  }
	
	public void ReasonForNotSendingCancelReason(String ReasonForNotSendingCancelReasonValue) throws IOException
	  {
		
		waitForElement(ReasonForNotSendingCancelReason, 20, "ReasonForNotSendingCancelReason");
		settext(ReasonForNotSendingCancelReason, "ReasonForNotSendingCancelReason", ReasonForNotSendingCancelReasonValue);
	    waitFor(2000);
	  
	  }
	
	public void ClickContinueButton() throws IOException
	  {
try{
		waitForElement(ContinueButton,20, "Continue Button");
		waitFor(2000);
		clickelement(ContinueButton, "Continue Button");
		waitFor(2000);
		}
			catch (NullPointerException ex) {
		    	screenShotPath = captureScreenShot();           	
		    	System.out.println("Result : Fail");
		    	test.log(Status.FAIL, "Something goes wrong with ClickContinueButton() function on cancelBooking Page");
		    	assertTrue(screenShotPath.isEmpty());
		    }
	  
	  }
	
	
	public  void CancellationRefNum(String CancellationRefNumValue) throws IOException
	{ 			
		settext(CancellationRefNum,"Cancellation Reference Number Text Box",CancellationRefNumValue);
		waitFor(2000);
	}
	
	public  void CancallationFeesOnRequest(String CancallationFees) throws IOException
	{ 			
		settext(CancallationFeesOnRequest,"CancallationFees-OnRequest",CancallationFees);
		waitFor(2000);
	}
	
	
	}

