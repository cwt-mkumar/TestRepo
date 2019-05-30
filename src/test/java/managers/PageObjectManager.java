package managers;
import org.openqa.selenium.WebDriver;

import pageObjects.HotelSearchPage;

import pageObjects.SearchResultPage;
import testBase.TestBase;


public class PageObjectManager extends TestBase {
	
	public PageObjectManager(WebDriver driver){
		super(driver);
	}

	private HotelSearchPage hotelSearchPage;
	private SearchResultPage searchResultPage;
	 
	 public HotelSearchPage getHotelSearchPage(){
		 return (hotelSearchPage == null) ? hotelSearchPage = new HotelSearchPage(driver) : hotelSearchPage;
	 }
	 
	 public SearchResultPage getSearchResultPage(){
		 return (searchResultPage == null) ? searchResultPage = new SearchResultPage(driver) : searchResultPage;
	 }
	 
	 
	 
}
