package managers;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;

import pageObjects.HotelSearchPage;

import pageObjects.SearchResultPage;
import testBase.TestBase;


public class PageObjectManager extends TestBase {
	
	public PageObjectManager(){
		PageFactory.initElements(driver, this);
	}
	private HotelSearchPage hotelSearchPage;
	private SearchResultPage searchResultPage;
	 
	 public HotelSearchPage getHotelSearchPage(){
		 return (hotelSearchPage == null) ? hotelSearchPage = new HotelSearchPage() : hotelSearchPage;
	 }
	 
	 public SearchResultPage getSearchResultPage(){
		 return (searchResultPage == null) ? searchResultPage = new SearchResultPage() : searchResultPage;
	 }
	 
	 
	 
}
