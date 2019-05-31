package stepDefinition;

import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.log4j.Logger;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;

import com.aventstack.extentreports.ExtentReports;
import com.aventstack.extentreports.ExtentTest;
import com.aventstack.extentreports.MediaEntityBuilder;
import com.aventstack.extentreports.Status;
import com.aventstack.extentreports.reporter.ExtentHtmlReporter;
import com.aventstack.extentreports.reporter.configuration.ChartLocation;
import com.aventstack.extentreports.reporter.configuration.Theme;

import cucumber.api.java.After;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import managers.FileReaderManager;
import managers.PageObjectManager;
import pageObjects.CancelBookingPage;
import pageObjects.ConfirmationPage;
import pageObjects.HotelSearchPage;
import pageObjects.ModifyBookingPage;
import pageObjects.OnRequestPage;
import pageObjects.SelectTravelerPage;
import testBase.TestBase;


public class PaymentModeA extends TestBase{
	 
		PageObjectManager pageObjectManager = new PageObjectManager();;
		HotelSearchPage hotelSearchPage;
		SelectTravelerPage selectTravelerPage;
		ConfirmationPage confirmationPage;
	    CancelBookingPage cancelBookingPage;
	    ModifyBookingPage modifyBookingPage;
	    OnRequestPage onRequestPage;
		public String browser="chrome";
		int i =0;
		  
		@After
	    public void afterScenario() throws IOException{
			
			
	    	closeBrowser();
	    }
	 
		
	@Given("^user is on HotelSearchPage for \"(.*?)\" and \"(.*?)\"$")
	public void user_is_on_HotelSearchPage_for_and(String TestCaseName, String PNR) throws Throwable {
		String TestCase_Name = TestCaseName+"_"+PNR;
		createTest(TestCase_Name);
		openBrowser(browser, PNR);
		navigateTo_HomePage();
	}

	@When("^user select the \"(.*?)\" and enter the \"(.*?)\" for \"(.*?)\"$")
	public void user_select_the_and_enter_the_for(String gds, String pnr, String TestCaseName) throws Throwable {
		 //pageObjectManager = new PageObjectManager();
		 hotelSearchPage=pageObjectManager.getHotelSearchPage();
		 hotelSearchPage.selectionGDSAndPNR(gds, pnr, TestCaseName);
	}

	@When("^select the \"(.*?)\" and \"(.*?)\" on HotelSearchPage$")
	public void select_the_and_on_HotelSearchPage(String checkIn, String checkOut) throws Throwable {
		hotelSearchPage=pageObjectManager.getHotelSearchPage();
		hotelSearchPage.selectCheckInDates(checkIn);
		waitFor(2000);
		hotelSearchPage.selectCheckOutDates(checkOut);
	}

	@When("^select the hotel \"(.*?)\" and rate on HotelSearchPage$")
	public void select_the_hotel_and_rate_on_HotelSearchPage(String HotelName) throws Throwable {
		hotelSearchPage.specificHotelSearch(HotelName);
		//Assert.assertFalse(driver.getCurrentUrl().contains("hotelsearch"));
	}

	@Then("^user should redirect to SelectTravelerPage$")
	public void user_should_redirect_to_SelectTravelerPage() throws Throwable {
		verifyPageURL("selecttraveller");
	}

	@Then("^user should redirect to onrequestffcPage$")
	public void user_should_redirect_to_onrequestffcPage() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
		verifyPageURL("onrequestffc");
	}


	@When("^user click on ContactInfo and NotificationEmail option on SelectTravelerPage$")
	public void user_click_on_ContactInfo_and_NotificationEmail_option_on_SelectTravelerPage() throws Throwable {
		selectTravelerPage=pageObjectManager.getSelectTravelerPage();
		selectTravelerPage.SelectContactInfoAndNotificationEmail();
		
	}
	
	
	@When("^user select the PaymentMode \"(.*?)\" on SelectTravelerPage$")
	public void user_select_the_PaymentMode_on_SelectTravelerPage(String PaymentMode) throws Throwable {
		selectTravelerPage=pageObjectManager.getSelectTravelerPage();
		selectTravelerPage.PaymentMode(PaymentMode);
	}

	@When("^select the PaymentType \"(.*?)\" on SelectTravelerPage$")
	public void select_the_PaymentType_on_SelectTravelerPage(String PaymentType) throws Throwable {
		selectTravelerPage.PaymentType(PaymentType);
	}

	@When("^select the HotelCommunication \"(.*?)\" on SelectTravelerPage$")
	public void select_the_HotelCommunication_on_SelectTravelerPage(String HotelCommunication) throws Throwable {
		selectTravelerPage.HotelCommunication(HotelCommunication);
	}
	@When("^select the ReasonForNotSending \"(.*?)\" on SelectTravelerPage$")
	public void select_the_ReasonForNotSending_on_SelectTravelerPage(String ReasonForNotSendingValue) throws Throwable {
		selectTravelerPage.ReasonForNotSending(ReasonForNotSendingValue);
	}
	
	@When("^enter the ReasonForNotSendingReason \"(.*?)\" on SelectTravelerPage$")
	public void enter_the_ReasonForNotSendingReason_on_SelectTravelerPage(String ReasonForNotSendingReasonValue) throws Throwable {
		selectTravelerPage.ReasonForNotSendingReason(ReasonForNotSendingReasonValue);
	}

	@When("^click on ConfirmBooking Button on SelectTravelerPage$")
	public void click_on_ConfirmBooking_Button_on_SelectTravelerPage() throws Throwable {
		selectTravelerPage.clickConfirmBookingButton();
		//Assert.assertFalse(driver.getCurrentUrl().contains("selecttraveller"));
		
	}
	
	@Then("^user should redirect to BookingConfirmationPage$")
	public void user_should_redirect_to_BookingConfirmationPage() throws Throwable {
		verifyPageURL("bookingconfirmation");
	}

	@Then("^Booking should be created successfully$")
	public void booking_should_be_created_successfully() throws Throwable {
		confirmationPage=pageObjectManager.getConfirmationPage();
		confirmationPage.validateBookingSuccessful();
		
	}
	

	@When("^user click on ViewBooking button on BookingConfirmationPage$")
	public void user_click_on_ViewBooking_button_on_BookingConfirmationPage() throws Throwable {
		confirmationPage.clickViewBookingButton();
	}
	
	
	@When("^user click on Cancel button on BookingConfirmationPage$")
	public void user_click_on_Cancel_button_on_BookingConfirmationPage() throws Throwable {
		confirmationPage.clickCancelBookingButton();
		//Assert.assertFalse(driver.getCurrentUrl().contains("bookingconfirmation"));
	}

	@Then("^user should redirect to CancelBooking Page$")
	public void user_should_redirect_to_CancelBooking_Page() throws Throwable {
		verifyPageURL("cancelbooking");
	}
	@When("^user enter CancellationRefNum \"(.*?)\" on CancelBooking Page$")
	public void user_enter_CancellationRefNum_on_CancelBooking_Page(String CancellationRefNum) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
		cancelBookingPage.CancellationRefNum(CancellationRefNum);
	}
	
	@When("^user enter CancellationFees \"(.*?)\" on CancelBooking Page$")
	public void user_enter_CancellationFees_on_CancelBooking_Page(String CancallationFees) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
		cancelBookingPage.CancallationFeesOnRequest(CancallationFees);
	}
	
	@When("^user select the HotelCommunication \"(.*?)\" on CancelBooking Page$")
	public void user_select_the_HotelCommunication_on_CancelBooking_Page(String HotelCommunicationCancel) throws Throwable {
		cancelBookingPage=pageObjectManager.getCancelBookingPage();
		cancelBookingPage.HotelCommunicationCancel(HotelCommunicationCancel);
	}
	
	@When("^select the ReasonForNotSending \"(.*?)\" on CancelBooking Page$")
	public void select_the_ReasonForNotSending_on_CancelBooking_Page(String ReasonForNotSendingCancelValue) throws Throwable {
		cancelBookingPage.ReasonForNotSendingCancel(ReasonForNotSendingCancelValue);
	}
	
	@When("^enter the ReasonForNotSendingReason \"(.*?)\" on CancelBooking Page$")
	public void enter_the_ReasonForNotSendingReason_on_CancelBooking_Page(String ReasonForNotSendingCancelReasonValue) throws Throwable {
		cancelBookingPage.ReasonForNotSendingCancelReason(ReasonForNotSendingCancelReasonValue);
	}

	@When("^user click on ContinueBooking button on CancelBooking Page$")
	public void user_click_on_ContinueBooking_button_on_CancelBooking_Page() throws Throwable {
		cancelBookingPage.ClickContinueButton();
		//Assert.assertFalse(driver.getCurrentUrl().contains("cancelbooking"));
	}

	@Then("^Booking should be cancelled successfully$")
	public void booking_should_be_cancelled_successfully() throws Throwable {
		confirmationPage.validateBookingCancellation();
	}
	
	@When("^user click on Modify button on BookingConfirmationPage$")
	public void user_click_on_Modify_button_on_BookingConfirmationPage() throws Throwable {
		confirmationPage=pageObjectManager.getConfirmationPage();
		confirmationPage.clickModifiedButton();
		//Assert.assertFalse(driver.getCurrentUrl().contains("bookingconfirmation"));
	}
	
	@When("^user should redirect to ModifyBooking Page$")
		public void user_should_redirect_to_ModifyBooking_Page() throws Throwable {
			verifyPageURL("modifybooking");
		}
	
	@When("^user click on ModifyCheckInAndCheckOut link on ModifyBooking Page$")
		public void user_click_on_ModifyCheckInAndCheckOut_link_on_ModifyBooking_Page() throws Throwable {
			modifyBookingPage=pageObjectManager.getModifyBookingPage();
			modifyBookingPage.ModifyCheckInAndCheckOut();
			
		}

	@Then("^user change the \"(.*?)\" from Check-In calender on ModifyBooking Page$")
		public void user_change_the_from_Check_In_calender_on_ModifyBooking_Page(String checkInDate) throws Throwable {
		hotelSearchPage.selectDate(checkInDate);
		}
	
	@Then("^user click on Check out date calendar on ModifyBooking Page$")
	public void user_click_on_Check_out_date_calender_on_ModifyBooking_Page() throws Throwable {
		modifyBookingPage.ClickCheckOutDateCalender();
	}
	
	@Then("^user change the \"(.*?)\" from Check-Out calender on ModifyBooking Page$")
	public void user_change_the_from_Check_Out_calender_on_ModifyBooking_Page(String checkOutDate) throws Throwable {
		hotelSearchPage.selectDate(checkOutDate);
	}
	
	@Then("^user click on GetModifyRate button on ModifyBooking Page$")
	public void user_click_on_GetModifyRate_button_on_ModifyBooking_Page() throws Throwable {
		modifyBookingPage.ClickGetModifyRate();
	}
	
	@Then("^user change the Check-In and Check-Out Date on ModifyBooking Page$")
	public void user_change_the_Check_In_and_Check_Out_Date_on_ModifyBooking_Page() throws Throwable {
		modifyBookingPage.ModifyDateIncrease();
	}

	@Then("^user select the rate \"(.*?)\" on ModifyBooking Page$")
		public void user_select_the_rate_on_ModifyBooking_Page(String rate) throws Throwable {
			modifyBookingPage.ModifyCheckRefundableAllRates(rate);
		}
	
	@When("^select the HotelCommunication \"(.*?)\" on ModifyBooking Page$")
		public void select_the_HotelCommunication_on_ModifyBooking_Page(String HotelCommunicationModify) throws Throwable {
		modifyBookingPage=pageObjectManager.getModifyBookingPage();	
		modifyBookingPage.HotelCommunicationModify(HotelCommunicationModify);
		}
	
	@When("^select the ReasonForNotSending \"(.*?)\" on ModifyBooking Page$")
	public void select_the_ReasonForNotSending_on_ModifyBooking_Page(String ReasonForNotSendingModifyValue) throws Throwable {
		modifyBookingPage.ReasonForNotSendingModify(ReasonForNotSendingModifyValue);
	}
	
	@When("^enter the ReasonForNotSendingReason \"(.*?)\" on ModifyBooking Page$")
	public void enter_the_ReasonForNotSendingReason_on_ModifyBooking_Page(String ReasonForNotSendingModifyReasonValue) throws Throwable {
		modifyBookingPage.ReasonForNotSendingReasonModify(ReasonForNotSendingModifyReasonValue);
	}
	
	
	@Then("^user click on ModifyBooking button$")
		public void user_click_on_ModifyBooking_button() throws Throwable {
			modifyBookingPage.ModifyBookingButton();
			//Assert.assertFalse(driver.getCurrentUrl().contains("modifybooking"));
		}

	@Then("^user click on ViewBookingAfterModify button on BookingConfirmationPage$")
		public void user_click_on_ViewBookingAfterModify_button_on_BookingConfirmationPage() throws Throwable {
			confirmationPage.clickViewBookingButton();
		}

	@Then("^user verify the error message on BookingConfirmationPage$")
		public void user_verify_the_error_message_on_BookingConfirmationPage() throws Throwable {
			confirmationPage.verifyErrorMsg();
		   
		}

	@When("^user click on ContactInfo and NotificationEmail option on onrequestffcPage$")
	public void user_click_on_ContactInfo_and_NotificationEmail_option_on_onrequestffcPage() throws Throwable {
		onRequestPage=pageObjectManager.getOnRequestPage();
		onRequestPage.SelectContactInfoAndNotificationEmail();
		
	}
	
	@When("^user select the PaymentMode \"(.*?)\" on onrequestffcPage$")
	public void user_select_the_PaymentMode_on_onrequestffcPage(String PaymentMode) throws Throwable {
		onRequestPage.PaymentMode(PaymentMode);
	}

	@When("^select the PaymentType \"(.*?)\" on onrequestffcPage$")
	public void select_the_PaymentType_on_onrequestffcPage(String PaymentType) throws Throwable {
		onRequestPage.PaymentType(PaymentType);
	}

	@When("^select the HotelCommunication \"(.*?)\" on onrequestffcPage$")
	public void select_the_HotelCommunication_on_onrequestffcPage(String HotelCommunication) throws Throwable {
		onRequestPage.HotelCommunication(HotelCommunication);
	}
	
	@When("^select the ReasonForNotSending \"(.*?)\" on onrequestffcPage$")
	public void select_the_ReasonForNotSending_on_onrequestffcPage(String ReasonForNotSendingValueOnRequestPage) throws Throwable {
		onRequestPage.ReasonForNotSendingOnRequestPage(ReasonForNotSendingValueOnRequestPage);
	}
	
	@When("^enter the ReasonForNotSendingReason \"(.*?)\" on onrequestffcPage$")
	public void enter_the_ReasonForNotSendingReason_on_onrequestffcPage(String ReasonForNotSendingReasonValueOnRequestPage) throws Throwable {
		onRequestPage.ReasonForNotSendingReasonOnRequestPage(ReasonForNotSendingReasonValueOnRequestPage);
	}
	
	@When("^user click on FulfillNow button on onrequestffcPage$")
	public void user_click_on_FulfillNow_button_on_onrequestffcPage() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
		onRequestPage=pageObjectManager.getOnRequestPage();
		onRequestPage.FulfillNow();
	}

	@When("^user select the RoomDescription \"(.*?)\" on onrequestffcPage$")
	public void user_select_the_RoomDescription_on_onrequestffcPage(String RoomDescription) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
		onRequestPage.RoomDescription(RoomDescription);
	}

	@When("^user select the RateDescription \"(.*?)\" on onrequestffcPage$")
	public void user_select_the_RateDescription_on_onrequestffcPage(String RateDescription) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
		onRequestPage.RateDescription(RateDescription);
	}

	@When("^click on CommissionableRadioBtn on onrequestffcPage$")
	public void click_on_CommissionableRadioBtn_on_onrequestffcPage() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
		onRequestPage.CommissionableRadioBtn();
	}

	@When("^eneter the CommissionAmount \"(.*?)\" on onrequestffcPage$")
	public void eneter_the_CommissionAmount_on_onrequestffcPage(String CommissionAmount) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
		onRequestPage.CommissionAmount(CommissionAmount);
	}

	@When("^enter the RatePerDay \"(.*?)\" on onrequestffcPage$")
	public void enter_the_RatePerDay_on_onrequestffcPage(String RatePerDay) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
		onRequestPage.RatePerDay(RatePerDay);
	}

	@When("^user select the MealPlan \"(.*?)\" on onrequestffcPage$")
	public void user_select_the_MealPlan_on_onrequestffcPage(String MealPlan) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
		onRequestPage.MealPlan(MealPlan);
	}

	@When("^enter the BreakfastAmount \"(.*?)\" on onrequestffcPage$")
	public void enter_the_BreakfastAmount_on_onrequestffcPage(String BreakfastAmount) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
		onRequestPage.BreakfastAmount(BreakfastAmount);
	}

	@When("^user select the BreakfastAvailability \"(.*?)\" on onrequestffcPage$")
	public void user_select_the_BreakfastAvailability_on_onrequestffcPage(String BreakfastAvailability) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
		onRequestPage.BreakfastAvailability(BreakfastAvailability);
	}

	@When("^enter the ConfirmationNum \"(.*?)\" on onrequestffcPage$")
	public void enter_the_ConfirmationNum_on_onrequestffcPage(String ConfirmationNum) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
		onRequestPage.ConfirmationNum(ConfirmationNum);
	}
	
	@When("^user enter the HighRoomRate as \"(.*?)\" on onrequestffcPage$")
	public void user_enter_the_HighRoomRate_as_on_onrequestffcPage(String HighRoomRate) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
		onRequestPage.SetHighRoomRate(HighRoomRate);
	}
	
	
	@When("^user enter the LowRoomRate as \"(.*?)\" on onrequestffcPage$")
	public void user_enter_the_LowRoomRate_as_on_onrequestffcPage(String LowRoomRate) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
		onRequestPage.SetLowRoomRate(LowRoomRate);
	}
	

	@When("^user select the BookingSource \"(.*?)\" on onrequestffcPage$")
	public void user_select_the_BookingSource_on_onrequestffcPage(String BookingSource) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
		onRequestPage.BookingSource(BookingSource);
	}

	@When("^user select the ReasonForOnRequestDdl \"(.*?)\" on onrequestffcPage$")
	public void user_select_the_ReasonForOnRequestDdl_on_onrequestffcPage(String ReasonForOnRequestDdl) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
		onRequestPage.ReasonForOnRequestDdl(ReasonForOnRequestDdl);
	}

	@When("^user select the ReasonForOnRequestTxtBox \"(.*?)\" on onrequestffcPage$")
	public void user_select_the_ReasonForOnRequestTxtBox_on_onrequestffcPage(String ReasonForOnRequestTxtBox) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
		onRequestPage.ReasonForOnRequestTxtBox(ReasonForOnRequestTxtBox);
	}
	@When("^click on ConfirmBooking Button on onrequestffcPage$")
	public void click_on_ConfirmBooking_Button_on_onrequestffcPage() throws Throwable {
		onRequestPage.clickConfirmOnReqButton();
		//Assert.assertFalse(driver.getCurrentUrl().contains("onrequestffc"));
	}
	
	@When("^user select MissedSavingCode \"(.*?)\"$")
    public void user_select_MissedSavingCode(String MissedSavingCode) throws Throwable {
		selectTravelerPage=pageObjectManager.getSelectTravelerPage();   
		selectTravelerPage.MissedSavingCode(MissedSavingCode);
    }
	
	@When("^user select MissedSavingCode \"(.*?)\" on ModifyBooking Page$")
    public void user_select_MissedSavingCode_on_ModifyBooking_Page(String MissedSavingCodeModify) throws Throwable {
		selectTravelerPage=pageObjectManager.getSelectTravelerPage();   
		selectTravelerPage.MissedSavingCode(MissedSavingCodeModify);
    }
	
	
	@When("^user select RealizedSavingsCode \"(.*?)\"$")
    public void user_select_RealizedSavingsCode(String RealizedSavingCode) throws Throwable {   
		selectTravelerPage.RealizedSavingCode(RealizedSavingCode);
    }
	
	@When("^user select HighRoomRate \"(.*?)\"$")
    public void user_select_HighRoomRate(String HighRoomRateValue) throws Throwable {
		selectTravelerPage=pageObjectManager.getSelectTravelerPage();
		selectTravelerPage.SelectHighRoomRate(HighRoomRateValue);
    }
	
	@When("^user select LowRoomRate \"(.*?)\"$")
    public void user_select_LowRoomRate(String LowRoomRateValue) throws Throwable {   
		selectTravelerPage.SelectLowRoomRate(LowRoomRateValue);
    }

}
