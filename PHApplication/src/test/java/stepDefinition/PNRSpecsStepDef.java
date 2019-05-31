package stepDefinition;

import java.util.List;

import cucumber.api.DataTable;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import managers.PageObjectManager;
import pageObjects.ConfirmationPage;
import testBase.TestBase;

public class PNRSpecsStepDef extends TestBase {
	ConfirmationPage confirmationPage;
	PageObjectManager pageObjectManager;
	
	@Then("^Capture values from confirmation page$")
	public void capture_values_from_confirmation_page() throws Throwable {
		 pageObjectManager = new PageObjectManager();
		 confirmationPage=pageObjectManager.getConfirmationPage();
		confirmationPage.valueCaptureFromConfirmationPage();
	}
	@Then("^Click on PNRLink of BookingConfirmationPage$")
	public void click_on_CrypticResponse(){
		
		confirmationPage.clickPNRLink();
	   
	}
	@And("^Read data from pop up PNR view$")
	public void read_data_from_pop_up_PNR_view() throws Throwable {
		confirmationPage.readcrypticResponse();
		waitFor(5000);
	}
	@And("^Validate the \"(.*?)\" Remark in PNR GDS Response$")
	public void validate_the_Remark_in_PNR_GDS_Response(String remarkName) throws Throwable {
		confirmationPage.PNRAnalysisWithoutValues(remarkName);
	}
	@And("^Validate the \"(.*?)\" Remark in PNR GDS Response with below data$")
	public void validate_the_Remark_in_PNR_GDS_Response_with_data(String remarkName, DataTable value) throws Throwable {
		List<List<String>> values=value.raw();
		confirmationPage.PNRAnalysisWithValues(remarkName, values.get(0).get(0));
		
	   
	}
  
}
