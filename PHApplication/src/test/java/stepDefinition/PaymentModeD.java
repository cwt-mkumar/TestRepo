package stepDefinition;

import cucumber.api.java.After;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import managers.PageObjectManager;
import pageObjects.CancelBookingPage;
import pageObjects.ConfirmationPage;
import pageObjects.HotelSearchPage;
import pageObjects.ModifyBookingPage;
import pageObjects.OnRequestPage;
import pageObjects.SelectTravelerPage;

import testBase.TestBase;

public class PaymentModeD extends TestBase
{
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
public void afterScenario(){
	closeBrowser();
}


@Given("^user is on HotelSearchPage for \"(.*?)\" and CustomerDetail \"(.*?)\"$")
public void user_is_on_HotelSearchPage_for_and(String TestCaseName, String CustomerDetail) throws Throwable {
	String TestCase_Name = TestCaseName+"_"+CustomerDetail;
	test = extent.createTest(TestCase_Name);
	openBrowser(browser, CustomerDetail);
	navigateTo_HomePage();
}
	@When("^user click on Hotels button to navigate HotelSearchPage on BookingConfirmationPage$")
	public void user_click_on_Hotels_button_to_navigate_HotelSearchPage_on_BookingConfirmationPage() throws Throwable {
		//pageObjectManager = new PageObjectManager();
		confirmationPage=pageObjectManager.getConfirmationPage();
		confirmationPage.HomePage();
		//Assert.assertFalse(driver.getCurrentUrl().contains("bookingconfirmation"));
	}

	@When("^click on Book Again Button on HotelSearchPage$")
	public void click_on_Book_Again_Button_on_HotelSearchPage() throws Throwable {
		 //pageObjectManager = new PageObjectManager();
		 hotelSearchPage=pageObjectManager.getHotelSearchPage();
		 hotelSearchPage.BookAgainFromHome();
		 //Assert.assertFalse(driver.getCurrentUrl().contains("hotelsearch"));
		 
	}

	@When("^user enter on PNR \"(.*?)\" to extract Traveller Info on SelectTravelerPage$")
	public void user_enter_on_PNR_to_extract_Traveller_Info_on_SelectTravelerPage(String PNR) throws Throwable {
		//pageObjectManager = new PageObjectManager();
		selectTravelerPage=pageObjectManager.getSelectTravelerPage();
		selectTravelerPage.BookAgainExtractFromPNR(PNR);
	}

	@When("^click on Extract Traveller's details Button in Book Again flow on SelectTravelerPage$")
	public void click_on_Extract_Traveller_s_details_Button_in_Book_Again_flow_on_SelectTravelerPage() throws Throwable {
		selectTravelerPage.BookAgainExtractTravellerDetails();
		
	}

	@Then("^pick Booking Refrence No from BookingConfirmationPage$")
	public void pick_Booking_Refrence_No_from_BookingConfirmationPage() throws Throwable {
		confirmationPage=pageObjectManager.getConfirmationPage();
		confirmationPage.PickReferenceNO();	
		}
	
	@When("^user enter BookingRefNo on HotelSearchPage$")
	public void user_enter_BookingRefNo_on_HotelSearchPage() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
		hotelSearchPage=pageObjectManager.getHotelSearchPage();
		String RefNO = confirmationPage.bookingRefNum;
		 hotelSearchPage.ReadAndEnterBookingRefNo(RefNO);	
		 }

	@When("^click on View Reference No/PNR button on HotelSearchPage$")
	public void click_on_View_Reference_No_PNR_button_on_HotelSearchPage() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
		hotelSearchPage.ClickOnPNRButton();
	}
	
	@When("^user select the Breakfast \"(.*?)\" with some random amount \"(.*?)\" on SelectTravelerPage$")
	public void user_select_the_Breakfast_with_some_random_amount_on_SelectTravelerPage(String Breakfast, String BreakfastAmount) throws Throwable {
		//pageObjectManager = new PageObjectManager();
		selectTravelerPage=pageObjectManager.getSelectTravelerPage();
		selectTravelerPage.SelectBreakfastWithAmount(Breakfast, BreakfastAmount);
	}
	
	@When("^user select the AdditionalServices \"(.*?)\" with some random amount \"(.*?)\" on SelectTravelerPage$")
	public void user_select_the_AdditionalServices_with_some_random_amount_on_SelectTravelerPage(String AdditionalServices, String AdditionalServicesAmount) throws Throwable {
		selectTravelerPage.SelectAdditionalServicesWithAmount(AdditionalServices, AdditionalServicesAmount);
	}
	
	@When("^click on Book Again Button on HotelSearchPage for BookAgaincancel flow$")
	public void click_on_Book_Again_Button_on_HotelSearchPage_for_BookAgaincancel_flow() throws Throwable {
		 //pageObjectManager = new PageObjectManager();
		 hotelSearchPage=pageObjectManager.getHotelSearchPage();
		 hotelSearchPage.BookAgainFromHomeCancel();
		 //Assert.assertFalse(driver.getCurrentUrl().contains("hotelsearch"));
	}
	@When("^user click on BookAgain button on BookingConfirmationPage$")
	public void user_click_on_BookAgain_button_on_BookingConfirmationPage() throws Throwable {
		//pageObjectManager = new PageObjectManager();
		confirmationPage=pageObjectManager.getConfirmationPage();
		confirmationPage.ClickBookAgainButton();
		//Assert.assertFalse(driver.getCurrentUrl().contains("bookingconfirmation"));
	}
	
	@When("^user click on ModifyRoomOrRate link on ModifyBooking Page$")
	public void user_click_on_ModifyRoomOrRate_link_on_ModifyBooking_Page() throws Throwable {
		modifyBookingPage=pageObjectManager.getModifyBookingPage();
		modifyBookingPage.ClickModifyRoomOrRate();
	}
	
	@When("^user click on GetModifyRates button on ModifyBooking Page$")
	public void user_click_on_GetModifyRates_button_on_ModifyBooking_Page() throws Throwable {
		modifyBookingPage=pageObjectManager.getModifyBookingPage();
		modifyBookingPage.ClickGetModifyRate();
	}
	
	@When("^user click on AdditionalRates button on ModifyBooking Page$")
	public void user_click_on_AdditionalRates_button_on_ModifyBooking_Page() throws Throwable {
		modifyBookingPage=pageObjectManager.getModifyBookingPage();
		modifyBookingPage.ClickAdditionalRate();
	}
	
	@When("^user select the different rate \"(.*?)\" as compared to old selected rate on ModifyBooking Page$")
	public void user_select_the_different_rate_as_compared_to_old_selected_rate_on_ModifyBooking_Page(String rate) throws Throwable {
		modifyBookingPage=pageObjectManager.getModifyBookingPage();
		modifyBookingPage.CompareOldRoomDesc(rate);
		
	}
	
	@And("^Enter the \"(.*?)\"$")
    public void enter_the(String destination) throws Throwable {
		   hotelSearchPage=pageObjectManager.getHotelSearchPage();
           hotelSearchPage.enterDestination(destination);
    
    }

    @When("^you select the first preferred hotel with \"(.*?)\" from the list$")
    public void you_select_the_first_preferred_hotel_with_from_the_list(String rate) throws Throwable {
      hotelSearchPage.DestinationSearch(rate);
    }

    @When("^user select the \"(.*?)\" and enter the CustomerDetail \"(.*?)\" for \"(.*?)\"$")
	public void user_select_the_and_enter_the_CustomerDetail_for(String gds, String CustomerDetail, String TestCaseName) throws Throwable {
		 hotelSearchPage=pageObjectManager.getHotelSearchPage();
		 hotelSearchPage.selectionGDSAndCustomerDetail(gds, CustomerDetail, TestCaseName);
	}

    
    }

