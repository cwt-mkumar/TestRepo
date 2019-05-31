package managers;
import pageObjects.CancelBookingPage;
import pageObjects.ConfirmationPage;
import pageObjects.HotelSearchPage;
import pageObjects.ModifyBookingPage;
import pageObjects.OnRequestPage;
import pageObjects.SelectTravelerPage;


public class PageObjectManager {

	private HotelSearchPage hotelSearchPage;
	private SelectTravelerPage selectTravelerPage;
	private ConfirmationPage confirmationPage;
	private CancelBookingPage cancelBookingPage;
	private ModifyBookingPage modifyBookingPage;
	private OnRequestPage onRequestPage;
	 
	 public HotelSearchPage getHotelSearchPage(){
		 return (hotelSearchPage == null) ? hotelSearchPage = new HotelSearchPage() : hotelSearchPage;
	 }
	 
	 public SelectTravelerPage getSelectTravelerPage(){
		 return (selectTravelerPage == null) ? selectTravelerPage = new SelectTravelerPage() : selectTravelerPage;
	 }
	 
	 public ConfirmationPage getConfirmationPage(){
			 return (confirmationPage == null) ? confirmationPage = new ConfirmationPage() : confirmationPage;
	 }
	 
	 public CancelBookingPage getCancelBookingPage(){
		 return (cancelBookingPage == null) ? cancelBookingPage = new CancelBookingPage() : cancelBookingPage;
 }
	 public ModifyBookingPage getModifyBookingPage(){
		 return (modifyBookingPage == null) ? modifyBookingPage = new ModifyBookingPage() : modifyBookingPage;
 }
	 
	 public OnRequestPage getOnRequestPage(){
		 return (onRequestPage == null) ? onRequestPage = new OnRequestPage() : onRequestPage;
 }
	 
}
