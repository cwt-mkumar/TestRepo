package pageObjects;

import static org.testng.Assert.assertTrue;

import java.io.IOException;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import com.aventstack.extentreports.MediaEntityBuilder;
import com.aventstack.extentreports.Status;

import managers.FileReaderManager;
import testBase.TestBase;

public class ConfirmationPage extends TestBase {

	public ConfirmationPage(){
		PageFactory.initElements(driver, this);
	}
	
	public static String pnrValue;
	public static String bookingConfNum;
	public static String bookingRefNum;
	public static String seqNum;
	public static String seqNum1;
	public static char ch;
	public static String arrvlDate;
	public static String sPNRSpecResp;
	public String roomRate;
	public String RateCurrency;
	public String bookingPin;
	public String hotelName;
	public String lowerroomRate;
	public String itineraryID;
	
	//@FindBy(xpath= ".//*[@id='divDetails']//div[@id='btnDivModify']//span[2]")WebElement ModifiedButton;
	@FindBy(xpath= ".//*[@id='btnDivModify']/a/span[2]")WebElement ModifyButton;
	@FindBy(xpath= ".//*[contains(@id,'lblstatus_')]")WebElement ConfirmBookingWait;	 
	@FindBy(xpath= ".//*[contains(@id,'spnViewBkng')]")WebElement ViewBooking;
	@FindBy(xpath= ".//*[@id='btnDivCancel']/a/span[2]")WebElement CancelBookingButton;
	@FindBy(xpath= "//*[contains(@id,'lblstatus_')]")WebElement CancellationStatusLabel;
	@FindBy(xpath= ".//*[contains(@id,'divconfrmDtls_')]/p/em")WebElement verifyErrorMsg;
	@FindBy(xpath= ".//*[@id='HOTELS']")WebElement HomePage;
	@FindBy(xpath= ".//*[contains(@id,'divbookagain_')]")WebElement BookAgainButtonConfirmationPage;
	@FindBy(xpath= ".//*[contains(@id,'lblbkngpinnum_')]")WebElement PHBookingPin;
	@FindBy(xpath= ".//*[@id='htl0']")WebElement HotelName;
	@FindBy(xpath= ".//*[contains(@id,'lblrateperday_NU')]")WebElement HotelRoomRate;
	@FindBy(xpath= ".//*[contains(@id,'lblbkngitnnum')]")WebElement ItineraryID;
	
	 /*PNRSpecs Validation*/
	
	@FindBy(xpath= ".//*[contains(@id,'lnkpnr_')]")WebElement PNRLink;
	@FindBy(xpath= ".//div[@id='divPnrdetails']//div[@id='divxmlCrypticResp']/textarea")WebElement CrypticResponse;
	@FindBy(xpath= ".//*[@id='outer']/div[1]/div[2]/span/img")WebElement ClosePNR;
	@FindBy(xpath= ".//*[contains(@id,'lblbkngcnfmnum_')]")WebElement BookingConfNum;
	@FindBy(xpath= ".//*[contains(@id,'lblbkngrqstnum_NU')]")WebElement BookingRefNum;
	@FindBy(xpath= ".//*[contains(@id,'lblarrvldt_')]")WebElement ArrvlDate;
	//@FindBy(xpath= ".//*[contains(@id,'lblbkngcnclnum_')]")public WebElement BookingCancellationNumElement;
	
	
	String xConfirmBookingWait = "//*[contains(@id,'lblstatus_')]";
	String BookingConfirmNum = ".//*[contains(@id,'lblbkngcnfmnum_')]";
	public String BookingCancellationNum = ".//*[contains(@id,'lblbkngcnclnum_')]";
	String xverifyErrorMsg = ".//*[contains(@id,'divconfrmDtls_')]/p/em";
	String xBookingRefNum = ".//*[contains(@id,'lblbkngrqstnum_NU')]";
	String xItineraryID = ".//*[contains(@id,'lblbkngitnnum')]";
	String BookingComPinNum= ".//*[contains(@id,'lblbkngpinnum_')]";
	String xPHBookingPin= ".//*[contains(@id,'lblbkngpinnum_')]";

	
	public void validateBookingSuccessful() throws IOException{
        waitIfElementLocated(xConfirmBookingWait);
        waitTillTextMatches(ConfirmBookingWait, "Processing");
        waitFor(2000);
        verifyTextContained(ConfirmBookingWait, "Confirmed");
        getTextContained(BookingConfirmNum, "BookingConfirmNumber");
        if(!driver.findElements(By.xpath(xItineraryID)).isEmpty())
        getTextContained(xItineraryID, "Expedia ItineraryID");
        waitFor(2000);
        if(!driver.findElements(By.xpath(BookingComPinNum)).isEmpty())
            getTextContained(BookingComPinNum, "Booking.Com PinNumber");
            waitFor(2000);
 }

	
	public void clickViewBookingButton(){
		waitForElement(ViewBooking, 30, "View Booking");
		clickelement(ViewBooking, "ViewBooking button");
		waitFor(7000);
	 }
	
	public void clickModifiedButton() throws IOException{
		try{
		waitForElement(ModifyButton, 20, "Modify Button");
		clickelement(ModifyButton, "ModifiedButton button");
		waitFor(2000);
	}
	catch (NullPointerException ex) {
    	screenShotPath = captureScreenShot();           	
    	System.out.println("Result : Fail");
    	test.log(Status.FAIL, "Something goes wrong with clickModifiedButton() function on Confirmation Page");
    	assertTrue(screenShotPath.isEmpty());
    }
	 }
	
	public void clickCancelBookingButton() throws IOException{
		
		try{
		waitForElement(CancelBookingButton, 20,"CancelBooking Button");
		clickelement(CancelBookingButton, "CancelBooking button");
		waitFor(2000);
		
		}
		catch (NullPointerException ex) {
	    	screenShotPath = captureScreenShot();           	
	    	System.out.println("Result : Fail");
	    	test.log(Status.FAIL, "Something goes wrong with clickCancelBookingButton() function on Confirmation Page");
	    	assertTrue(screenShotPath.isEmpty());
	    }
	 }
	
	public void validateBookingCancellation() throws IOException{
		waitFor(2000);
		verifyTextContained(CancellationStatusLabel, "Cancelled");
		waitFor(2000);
		getTextContained(BookingCancellationNum, "BookingCancelationNumber");
		waitFor(2000);
	 }
	
	public void verifyErrorMsg()throws IOException
	   {   
		   String text;
		   try
		   {		 
			   element = findElement(xverifyErrorMsg);
			   if( element == null )
			   {
				   System.out.println("Result : Pass");
	               
			   }
			   else
			   {
				   System.out.println("Result : Fail");
				      text = element.getText();
				      screenShotPath = captureScreenShot();
                   test.log(Status.FAIL, "Error Message"+text,MediaEntityBuilder.createScreenCaptureFromPath(screenShotPath).build());
                   
			   }
		   
		   }catch(Exception e){
			   screenShotPath = captureScreenShot();
            test.log(Status.FAIL, "Not Matched",MediaEntityBuilder.createScreenCaptureFromPath(screenShotPath).build());
	           System.out.println("Result : Fail");
	        
	   }		   
		   
}
	
	public void HomePage(){
		waitForElement(HomePage, 10, "Hotels button ConfirmationPage");
		clickelement(HomePage, "Hotels button ConfirmationPage");
		waitFor(2000);
	 }
	
	public void ClickBookAgainButton(){
		waitForElement(BookAgainButtonConfirmationPage, 10, "BookAgain Button on ConfirmationPage");
		clickelement(BookAgainButtonConfirmationPage, "BookAgain Button on ConfirmationPage");
		waitFor(2000);
	 }


public void PickReferenceNO(){
		
	    bookingRefNum = getTextContained(xBookingRefNum, "BookingReferenceNumber");
		waitFor(5000);
	 }

	public void clickPNRLink()
	{
		waitForElement(PNRLink, 20,"PNR Link");
		clickelement(PNRLink, "PNR Link");
	}
	
	public void readcrypticResponse()
	{
		try{
		 driver.switchTo().frame("popupframe"); 
		 highlightElement(CrypticResponse);
         sPNRSpecResp=CrypticResponse.getText();
         System.out.println("-----------------------Required Text----------------------------");
         System.out.println(sPNRSpecResp);
         driver.switchTo().defaultContent();
         waitFor(2000);
         ClosePNR.click();
		}
		catch(Exception e){
			 test.log(Status.FAIL, "Unable to read crptic response");
			System.out.println("Result : Fail");
			}
		}
	public void valueCaptureFromConfirmationPage()
	{
		try {
			
	    waitForElement(PNRLink, 30, "PNRVALUE");
		pnrValue = PNRLink.getText();
		highlightElement(BookingConfNum);
		bookingConfNum=BookingConfNum.getText();
		if (!bookingConfNum.isEmpty())
           bookingConfNum = bookingConfNum.split(":")[1].trim();
	
		
		bookingRefNum = BookingRefNum.getText();
		
		highlightElement(ArrvlDate);
		arrvlDate=ArrvlDate.getText().toUpperCase();
		 if (!arrvlDate.isEmpty())
         	   arrvlDate = arrvlDate.split("-")[0].trim() + arrvlDate.split("-")[1].trim();
		 
		System.out.println(pnrValue+"  "+bookingConfNum+" "+bookingRefNum);
		 waitFor(2000);
		 
		 waitForElement(HotelName, 30, "Hotel Name");
		 highlightElement(HotelName);
         //element = waitForElementClickable(xHotelName,20);
         hotelName = HotelName.getAttribute("onmouseover");
         hotelName = hotelName.replace("javascript:ShowToolTip($(this),'", "");
         if (hotelName.contains("<br/>"))
      	   hotelName = hotelName.split("<br/>")[0];
         hotelName = hotelName.replace("')", "");
         test.log(Status.PASS,"Booking done for the Hotel : "+ hotelName);
                                            
         waitForElement(HotelRoomRate, 30, "Hotel Room Rate");
		 highlightElement(HotelRoomRate);
         roomRate = HotelRoomRate.getText();
         RateCurrency = roomRate.substring(0,3).trim();
         roomRate = roomRate.substring(3, roomRate.length()).trim();
         if(roomRate.contains(".00"))
           lowerroomRate = roomRate.split("\\.")[0];
         else
           lowerroomRate = roomRate;
		 
		 //waitForElement(PHBookingPin, 30, "PH BookingPin");
		 
         if (driver.findElements(By.xpath(xPHBookingPin)).size()!= 0)
         {
           highlightElement(PHBookingPin);
      	   bookingPin = PHBookingPin.getText();            	   
         }
         
         //waitForElement(ItineraryID, 30, "ItineraryID for EAN");
         
         if (driver.findElements(By.xpath(xItineraryID)).size()!= 0)
         {
           highlightElement(ItineraryID);
      	   itineraryID = ItineraryID.getText();            	   
         }
	}
		catch(Exception e){
			 test.log(Status.FAIL, "Unable to read value :"+e);
			System.out.println("Result : Fail");
			}
		
		}
	public void PNRAnalysisWithoutValues(String remark) throws Exception 
	{
		 String regexpr, matchedString, confNum1, confNum;
		try 
		{ 
		switch(remark)
		 {
		 case "ConfirmationNum" :
          	
			 regexpr = FileReaderManager.getInstance().getConfigReader().properties1.getProperty("ConfirmationNum") ;
          	
               matchedString = searchPattern(sPNRSpecResp, regexpr);
               if(! matchedString.contains("No Match Found"))
               {
              	 confNum1 = matchedString.trim();
              	 confNum = confNum1.replaceAll("\\s*", "");
             	//test.log(Status.PASS, "Confirmation Number found in Label : "+ confNum+" successfully");
                   if(confNum.contains(bookingConfNum))
                   {
                  	 System.out.println("Result : Passed"); 
                  	test.log(Status.PASS, "Confirmation Number found in Label : "+ confNum+" successfully");
                   }
                   else
                   {
                  	 System.out.println("Result : Failed");                                                     
                   } 
               }
               else
               {
                   System.out.println("No match found");
               }
               break;
               
		 case "BookingPin" :
	      	  
	      	  regexpr = FileReaderManager.getInstance().getConfigReader().properties1.getProperty("BookingPin") ;
	      	  regexpr = regexpr.replace("nn", seqNum);                  
	           matchedString = searchPattern(sPNRSpecResp, regexpr);             
	           if(! matchedString.contains("No Match Found"))
	           {
	        	   test.log(Status.PASS,"Booking.com Pin Label found on Line Number : " + matchedString);
	         	  if (! bookingPin.isEmpty() && matchedString.contains(bookingPin.split(":")[1]))
	         		 test.log(Status.PASS, "Booking.com Pin Label matched with PH application : "+ bookingPin);
	                else
	                {
	                	test.log(Status.FAIL, "No Match Found for Label Booking.com Pin: " + bookingPin);
	                } 
	           }
	           else
	           {
	        	   test.log(Status.FAIL,"No Match Found for Label Booking Pin!");
	           }
	           break;
		
			 
		 case "ConfirmationNumBC" :
	           
	           regexpr = FileReaderManager.getInstance().getConfigReader().properties1.getProperty("ConfirmationNumBC") ;
	           regexpr = regexpr.replace("nn", seqNum);                  
	           matchedString = searchPattern(sPNRSpecResp, regexpr);             
	           if(! matchedString.contains("No Match Found"))
	           {
	        	   test.log(Status.PASS,"Confirmation Number for Booking.com/Expedia Label found on Line Number : " + matchedString);
	         	  if (matchedString.contains(bookingConfNum))
	         	  {
	         		  System.out.println("Result : Passed");                                                   
	         		 test.log(Status.PASS, "Confirmation Number is appearing same as on PH Confirmation Page :"+ bookingConfNum);                                   
	         	  }

				      else
				      {
				          System.out.println("Result : Failed");                                                     
				          test.log(Status.FAIL,"Confirmation Number is not appearing same as on PH Confirmation Page"+ bookingConfNum);                  
				      } 
	           }
	           else
	           {
	        	   test.log(Status.FAIL, "No Match Found for Label Confirmation Number of Booking.com !");
	           }
	           break;
	           
		 }
		}
		catch (Exception e) {
  	      screenShotPath = captureScreenShot();                  
            System.out.println("Result : Fail");
            test.log(Status.FAIL,"PNRAnalysisWithoutValues"+ "Not Matched!!",MediaEntityBuilder.createScreenCaptureFromPath(screenShotPath).build());
     }
		}
		
	
	public void PNRAnalysisWithValues(String remark, String value) throws Exception
	{
		 String regexpr, matchedString,refNum;
		try {
		switch(remark)
		{
		case "SpecialInfo" :
			
		  	regexpr = FileReaderManager.getInstance().getConfigReader().properties1.getProperty("SpecialInfo") ;
            
            if(value.split(";")[0]!="" && value.split(";")[0].toUpperCase().contains("YES"))
            {
          	  if(value.split(";")[1].toUpperCase().contains("YES"))
            	   {
            	       regexpr = regexpr.replace("RM1", value.split(";")[2]);
            	   }
          	  
          	  if(value.split(";")[3]!=""&& value.split(";")[1].toUpperCase().contains("YES"))
         	       {
         	       regexpr = regexpr.replace("PNR", pnrValue);
         	        }

                 if(value.split(";")[4].toUpperCase().contains("YES"))
         	       {
         	       regexpr = regexpr.replace("RM2", value.split(";")[5]);
         	       }
                 if(value.split(";")[6].toUpperCase().contains("YES"))
         	       {
         	       regexpr = regexpr.replace("RM3", value.split(";")[7]);
         	       }
             	  
               matchedString = searchPattern(sPNRSpecResp, regexpr);
               System.out.println("Regex is:" + matchedString);
               if(! matchedString.contains("No Match Found"))
               {
               	//seqNum = matchedString.split("\\*H")[1].replaceAll("\\s+", "").trim().substring(0, 2);
               	seqNum = matchedString.split("\\*H")[1].substring(0, 2);
               	System.out.println("seqNum is:" +seqNum);
               	//System.out.println("Sequential Number found with details : " + matchedString+"pass"+"" );
               	test.log(Status.PASS, "Sequential Number found with details : "+ matchedString+" successfully");
                   
                   if(matchedString.contains(pnrValue))
                   {
                		test.log(Status.PASS, "SpecialInfo Remark found with PNR as: "+ pnrValue+" "+ matchedString+" successfully");
                		//System.out.println("SpecialInfo Remark found with PNR as: "+ pnrValue+ matchedString+"pass"+"");
                 
                   }
            }   
            
            else
            {
              test.log(Status.FAIL, "No Match Found for Label Sequential Number!");
            }
            }
     	
          	   break;
		case "SpecialInfoRemark" :
         	
     		regexpr = FileReaderManager.getInstance().getConfigReader().properties1.getProperty("SpecialInfoRemark") ; 
               matchedString = searchPattern(sPNRSpecResp, regexpr);
               System.out.println("Regex is:" + matchedString);
               if(! matchedString.contains("No Match Found"))
               {
               	seqNum1 = matchedString.split("\\*H")[1].substring(0, 8);
               	test.log(Status.PASS, "Sequential Number found with details : "+ matchedString+" successfully");
                
            }   
            
            else
            {
            	test.log(Status.FAIL, "No Match Found for Label Sequential Number!");
            	
            }
     	
          	   break;
		case "BookingStatusCode" :
            
            regexpr = FileReaderManager.getInstance().getConfigReader().properties1.getProperty("BookingStatus") ;
            if(!value.contains("CXL"))
            {                                           
                     regexpr = regexpr.replace("BookingStatusCode", value.split(";")[0]);
                     regexpr = regexpr.replace("BookingStatusInfo", value.split(";")[1].concat("-" + bookingRefNum));
                     if(value.split(";")[2].contains("seqNum1")){
                          regexpr = regexpr.replace("nn", seqNum1);
                     }
                     else{
                          regexpr = regexpr.replace("nn", seqNum);
                     }
                     matchedString = searchPattern(sPNRSpecResp, regexpr);
                     if(! matchedString.contains("No Match Found"))
                     {
                    	 	test.log(Status.PASS, "Booking Status Label found with details : "+ matchedString+" successfully");
                       	 test.log(Status.PASS,"Booking reference Number displayed is same as on PH confirmation page  : " + bookingRefNum +" successfully");
                    	}else
                      {
                    		test.log(Status.FAIL, "No Match Found for Label Booking Status Code!");
                    	
                      }
            }
            else 
             {
                   regexpr = regexpr.replace("nn", "[0-9]{2}");
                     regexpr = regexpr.replace("BookingStatusCode", value.split(";")[0]);
                     regexpr = regexpr.replace("BookingStatusInfo", value.split(";")[1].concat("-" + bookingRefNum));                       
                     matchedString = searchPattern(sPNRSpecResp, regexpr);
                     if(! matchedString.contains("No Match Found"))
                    	test.log(Status.PASS, "Booking Status Label found with Reference Number : "+ matchedString+" successfully");
                    	else
                      {
                    	 test.log(Status.FAIL, "No Match Found for Label Booking Status Code!");
                      }
             }
         break;
		 case "HotelCityCodeValidateDate" :
			  regexpr = FileReaderManager.getInstance().getConfigReader().properties1.getProperty("HotelDetails") ;
	       	   
	       	   if(!value.contains("CXL"))
	       	   {

		               matchedString = searchPattern(sPNRSpecResp, regexpr);
		               
		              
		               if(! matchedString.contains("No Match Found"))
		               {
		            	   ch=matchedString.charAt(2);
		            	 
			               System.out.println("booking segment line no:"+ ch);
			               test.log(Status.PASS,"Booking Segment Found with details : "+ matchedString+" successfully");
		            	
		            	   if(value.toUpperCase().contains("YES") && matchedString.contains(arrvlDate.toUpperCase()))
		            	   {
		            		   test.log(Status.PASS,"Hotel Booking Segment Found with Arrival Date : "+ arrvlDate +" successfully");
		            		 }
		            	   else if(value.toUpperCase().contains("NO") && matchedString.contains(arrvlDate.toUpperCase()))
		            	   {
		            		   //DO NOTHING
		            	   }
		                   else
		                   {
		                	   test.log(Status.FAIL, "No Match Found for Label! :" + arrvlDate);
		                   }	            	   	                  
		               }
		               else
		                 {
		            	   test.log(Status.FAIL, "No Match Found for Label Hotel Booking Segment!");
		                 }
	              }
	       	   else
	       	   {

		               matchedString = searchPattern(sPNRSpecResp, regexpr);
		               if(matchedString.contains("No Match Found"))
		               {
		            	   test.log(Status.PASS,"Booking Segment does not contains details for Label : "+ regexpr+" successfully");
		            	   //reporter.createXMLFile(count,"PNRAnalysisFilterText","Booking Segment does not contains details for Label : "+ regexpr ,exeStartTime,getCurrentTime(dateFormatForTestCase),"pass","");
		               }
	       	   }
	       	   
	           break;
		 case "PaymentModeType" :
			 regexpr = FileReaderManager.getInstance().getConfigReader().properties1.getProperty("PaymentType") ;
             
             if (!value.contains("CXL"))
             {
            	  regexpr = regexpr.replace("RemarkCode", value.split(";")[0]);
                  regexpr = regexpr.replace("PaymentMode", value.split(";")[1]);
                  if(value.split(";")[0].contains("VFF33")){
                	regexpr = regexpr.replace("nn", seqNum1); 
                  }
                  else{
                	regexpr = regexpr.replace("nn", seqNum);
                  }
                  matchedString = searchPattern(sPNRSpecResp, regexpr);
                  if(! matchedString.contains("No Match Found"))
                	  test.log(Status.PASS,"Payment Type Label found on Line Number : "+ matchedString+" successfully");
                	  else
                  {
                		  test.log(Status.FAIL, "No Match Found for Label Hotel Payment Type!");
                  }
             }
             else 
             {
           	  regexpr = regexpr.split("Hnn")[0];	                  
                  matchedString = searchPattern(sPNRSpecResp, regexpr);
                  if( matchedString.contains("No Match Found"))
                	  test.log(Status.PASS,"Booking Segment does not contains details for Label: "+ regexpr+" successfully");
              }                 
             break;
		 case "CardType" :
			 regexpr = FileReaderManager.getInstance().getConfigReader().properties1.getProperty("CreditCard") ;
         
             if(!value.contains("CXL"))
             {
                  regexpr = regexpr.replace("nn", seqNum);
                  regexpr = regexpr.replace("CardType", value);
                  matchedString = searchPattern(sPNRSpecResp, regexpr);             
                  if(! matchedString.contains("No Match Found"))
                	  test.log(Status.PASS,"Credit Card Type Label found on Line Number : "+ matchedString+" successfully");
                	  else
                  {
                		  test.log(Status.FAIL, "No Match Found for Label Credit Card Type!");
                     }
             }
             else 
             {
           	  regexpr = regexpr.split("Hnn")[0];	                  
                  matchedString = searchPattern(sPNRSpecResp, regexpr);
                  if( matchedString.contains("No Match Found"))
                	  test.log(Status.PASS,"Credit Card Label not found  :"+ regexpr+" successfully");
                	 }
         break;
         
         case "PrintVoucher" :
       	  
        	 regexpr = FileReaderManager.getInstance().getConfigReader().properties1.getProperty("PrintVoucher") ;
             
             if(!value.contains("CXL"))
             {
                  regexpr = regexpr.replace("nn", seqNum);
                  regexpr = regexpr.replace("PrintVoucherInfo", value);
                  matchedString = searchPattern(sPNRSpecResp, regexpr);             
                  if(! matchedString.contains("No Match Found"))
                	  test.log(Status.PASS,"Print voucher Label found on Line Number : "+ matchedString+" successfully");
                	 else
                  {
                		 test.log(Status.FAIL, "No Match Found for Label Print Voucher!");
                        
                  }
             }
             else 
             {
           	  regexpr = regexpr.split("Hnn")[0];	                  
                  matchedString = searchPattern(sPNRSpecResp, regexpr);
                  if( matchedString.contains("No Match Found"))
                	  test.log(Status.PASS,"Print Voucher Label not found  :"+ regexpr+" successfully");
             }
         break;
         case "HotelKey" :
        	 regexpr = FileReaderManager.getInstance().getConfigReader().properties1.getProperty("HarpHotelKey") ; 
             if(!value.contains("CXL"))
             {
               	  regexpr = regexpr.replace("RemarkCode", value);

	                  if(value.contains("VFF42")){
	                	regexpr = regexpr.replace("nn", seqNum1); 
	                  }
	                  else{
	                	regexpr = regexpr.replace("nn", seqNum);
	                  }
                  matchedString = searchPattern(sPNRSpecResp, regexpr);             
                  if(! matchedString.contains("No Match Found"))
                	  test.log(Status.PASS,"Harp Hotel Key Label found on Line Number : "+ matchedString+" successfully");
                	   else
                  {
                		   test.log(Status.FAIL, "No Match Found for Label Hotel Harp Key!");
            	   }
             }
             else 
             {
           	  regexpr = regexpr.split("Hnn")[0];	                  
                  matchedString = searchPattern(sPNRSpecResp, regexpr);
                  if( matchedString.contains("No Match Found"))
                	  test.log(Status.PASS,"Hotel Harp Key Label not found  :"+ regexpr+" successfully");
                	 }
         break;
         case "RoomTypeInfo" :
             
             regexpr = FileReaderManager.getInstance().getConfigReader().properties1.getProperty("RoomType") ;
             if(!value.contains("CXL"))
             {
             regexpr = regexpr.replace("RoomTypeInfo", value);
           regexpr = regexpr.replace("nn", seqNum);                  
               matchedString = searchPattern(sPNRSpecResp, regexpr);
               if(! matchedString.contains("No Match Found"))
            	   test.log(Status.PASS,"Room Type Information found on Line Number : "+ matchedString+" successfully");
                     else
               {
                    	 test.log(Status.FAIL, "No Match Found for Label Room Type Information!");
                     
               }
             }
             else 
          {
             regexpr = regexpr.split("Hnn")[0];                       
               matchedString = searchPattern(sPNRSpecResp, regexpr);
               if( matchedString.contains("No Match Found"))
            	   test.log(Status.PASS,"Room Type Information Label not found  :"+ regexpr+" successfully"); 
           }
      break;  
         case "VATInfo" :
        	 regexpr = FileReaderManager.getInstance().getConfigReader().properties1.getProperty("VatIdentifier") ;
            
             if(!value.contains("CXL"))
                    
             {
                      regexpr = regexpr.replace("nn", seqNum);
                    //  regexpr = regexpr.replace("VATInfo", confirmationDetails);
                      matchedString = searchPattern(sPNRSpecResp, regexpr);    
                      System.out.println(regexpr);
                      System.out.println(matchedString);
                      if(!matchedString.contains("No Match Found"))
                    	  test.log(Status.PASS,"VAT Identifier found on Line Number : "+ matchedString+" successfully"); 
                          else
                      {
                        	  test.log(Status.FAIL, "No Match Found for Label VAT Identifier!");
                           
                      }
             }
             else 
              {
                    regexpr = regexpr.split("Hnn")[0];                       
                      matchedString = searchPattern(sPNRSpecResp, regexpr);
                      if( matchedString.contains("No Match Found"))
                    	  test.log(Status.PASS,"VAT Identifier Label not found  :"+ regexpr+" successfully"); 
               }
              break;
         case "BookingTool" :
         	  
         	  regexpr =FileReaderManager.getInstance().getConfigReader().properties1.getProperty("BookingTool") ;
         	  if(!value.contains("CXL"))
         	  {
         		  

          	  regexpr = regexpr.replace("RemarkCode", value.split(";")[0]);
                regexpr = regexpr.replace("BookingToolVal", value.split(";")[1]);
                if(value.split(";")[0].contains("VFF35")){
              	regexpr = regexpr.replace("nn", seqNum1); 
                }
                else{
              	regexpr = regexpr.replace("nn", seqNum);
                }
	               
	                  matchedString = searchPattern(sPNRSpecResp, regexpr);             
	                  if(! matchedString.contains("No Match Found"))
	                	  test.log(Status.PASS,"Booking Tool label found on Line Number : "+ matchedString+" successfully");
	                	   else
	                  {
	                		   test.log(Status.FAIL, "No Match Found for Label Booking Tool!");
	                       
	                  }
         	  }
         	  else 
               {
             	  regexpr = regexpr.split("Hnn")[0];	                  
	                  matchedString = searchPattern(sPNRSpecResp, regexpr);
	                  if( matchedString.contains("No Match Found"))
	                	  test.log(Status.PASS,"Booking Tool Label not found  :"+ regexpr+" successfully");
	                	 }
           break;
         case "BookingSrc" :
        	 regexpr =FileReaderManager.getInstance().getConfigReader().properties1.getProperty("BookingSourceCode") ;
          	  
          	  if(!value.contains("CXL"))
          	  {	 
          		      regexpr = regexpr.replace("RemarkCode", value.split(";")[0]);
	                  regexpr = regexpr.replace("BookingSrc", value.split(";")[1]);
	                  if(value.split(";")[0].contains("VFF28")){
	                	regexpr = regexpr.replace("nn", seqNum1); 
	                  }
	                  else{
	                	regexpr = regexpr.replace("nn", seqNum);
	                  }
	                  matchedString = searchPattern(sPNRSpecResp, regexpr);             
	                  if(! matchedString.contains("No Match Found"))
	                	  test.log(Status.PASS,"Booking Source Code label found on Line Number : "+ matchedString+" successfully");
	                      else
	                  {
	                    	  test.log(Status.FAIL, "No Match Found for Label Booking Source Code!");
	                       
	                  }
          	  }
          	  else 
                {
              	  regexpr = regexpr.split("Hnn")[0];	                  
	                  matchedString = searchPattern(sPNRSpecResp, regexpr);
	                  if( matchedString.contains("No Match Found"))
	                	  test.log(Status.PASS,"Booking source code Label not found  :"+ regexpr+" successfully");
	            }
            break;
                
            
            case "Commission" :
            	regexpr =FileReaderManager.getInstance().getConfigReader().properties1.getProperty("CommissionIdentifier") ;
                
                if(!value.contains("CXL"))
                {                
                           regexpr = regexpr.replace("nn", seqNum);
                         matchedString = searchPattern(sPNRSpecResp, regexpr);
                         System.out.println(matchedString);
                         if(! matchedString.contains("No Match Found"))
                        	 test.log(Status.PASS,"Commission Identifier label found on Line Number : "+ matchedString+" successfully");
                              else
                         {
                            	  test.log(Status.FAIL, "No Match Found for Label Commission with "+value);
                              
                         }
                }
                else 
                 {
                       regexpr = regexpr.split("Hnn")[0];                       
                         matchedString = searchPattern(sPNRSpecResp, regexpr);
                         if( matchedString.contains("No Match Found"))
                        	 test.log(Status.PASS,"Commission Identifier Label not found  :"+ regexpr+" successfully");
                              }
            break;
		
		
		case "ReferenceNum" :
         	  
         	  regexpr = FileReaderManager.getInstance().getConfigReader().properties1.getProperty("ReferenceNum") ;
         	  if(!value.contains("CXL"))
         	  {            		  
	                  regexpr = regexpr.replace("nn", seqNum);
	                  matchedString = searchPattern(sPNRSpecResp, regexpr);
	                  if(! matchedString.contains("No Match Found"))
	                  {
	                	  test.log(Status.PASS,"Booking Reference Number Label found on Line Number : " + matchedString+" successfully");
	                      refNum = matchedString;
	                      if (refNum.indexOf(bookingRefNum.replace("-", "")) > 0)
	                      {
	                    	  System.out.println("Result : Passed");                                                   
	                    	  test.log(Status.PASS, "Booking Reference Number is appearing same as shown on PH Confirmation page:"+ bookingRefNum);                     
	                      }
	                      
	                      else
	                      {
	                    	  System.out.println("Result : Failed");                                                     
	                    	  test.log(Status.FAIL, "Booking Reference Number is not appearing same as shown on PH Confirmation page:"+ bookingRefNum);  
	                      }
	                  }
	                  else
	                  {
	                	  test.log(Status.FAIL, "Reference Number Label not Found!");
	                  }
         	  }
         	  
           break;
		
           
		case "HotelRoomRateValidate" :
      	  
      	  regexpr = FileReaderManager.getInstance().getConfigReader().properties1.getProperty("RoomRate");
      	  regexpr = regexpr.replace("nn", seqNum);
            matchedString = searchPattern(sPNRSpecResp, regexpr);
	          if(! matchedString.contains("No Match Found"))
	            {		        	  
	        	  test.log(Status.PASS,"Hotel Room Rate Found with details on line number : "+ matchedString);
	              if(value.toUpperCase().contains("YES"))
	              {
		              if (! roomRate.isEmpty() && matchedString.contains(roomRate))
		            	  test.log(Status.PASS,"Hotel Room Rate Field Found with details : "+ roomRate);
		              else
		                {
		            	  test.log(Status.FAIL, "No Match Found for Label Segment relation Field with rate: " + roomRate);
		                }                    
	              }
	            }
	          else
           {
	        	  test.log(Status.FAIL,"No Match Found for Label Hotel Room Rate!");
           }
	          break;
	          
        case "RoomRateType" :
     	  
     	  regexpr = FileReaderManager.getInstance().getConfigReader().properties1.getProperty("RoomRateType") ;
     	  if(!value.contains("CXL"))
     		  
     	  {
                regexpr = regexpr.replace("nn", seqNum);
                regexpr = regexpr.replace("RateType", value);
                matchedString = searchPattern(sPNRSpecResp, regexpr);             
                if(! matchedString.contains("No Match Found"))
                	test.log(Status.PASS,"Room Rate Type Label found on Line Number : " + matchedString);
                else
                {
                	test.log(Status.FAIL, "No Match Found for Label Room Rate Type!");
                }
     	  }
     	  else 
           {
         	  regexpr = regexpr.split("Hnn")[0];	                  
                matchedString = searchPattern(sPNRSpecResp, regexpr);
                if( matchedString.contains("No Match Found"))
                	test.log(Status.FAIL, "Room Rate Type Label not found : " + regexpr);
                else
                {
                	test.log(Status.FAIL, "No Match Found for Label Room Rate Type!");
                }
           }
           break;
           
        case "Currency" :
     	  
     	  regexpr = FileReaderManager.getInstance().getConfigReader().properties1.getProperty("Currency") ;
     	  if(!value.contains("CXL"))
     		  
     	  {
     		  regexpr = regexpr.replace("nn", seqNum);
     		  if(value.split(";")[0].contains("Yes"))
     		  {
     			regexpr = regexpr.replace("Currency", RateCurrency);
     			matchedString = searchPattern(sPNRSpecResp, regexpr);             
                if(! matchedString.contains("No Match Found"))
                {
                	test.log(Status.PASS,"Currency Label found on Line Number : " + matchedString);
	                  if(matchedString.contains(RateCurrency)){
	                	  test.log(Status.PASS,"Same Currency is displaying in PNR Specs as on PH confirmation Page :" + RateCurrency);  
	                  }
	                  else{
	                	  test.log(Status.FAIL, "Same Currency is not displaying in PNR Specs as on PH confirmation Page :" + RateCurrency);
	                  }
     		  }
     		  }
     		  else if (value.split(";")[0].contains("No")) {
     			regexpr = regexpr.replace("Currency", value.split(";")[1]);
     			matchedString = searchPattern(sPNRSpecResp, regexpr);             
                if(! matchedString.contains("No Match Found"))
                {
                	test.log(Status.PASS,"Currency Label found on Line Number : " + matchedString);
	                  if(matchedString.contains(value.split(";")[1])){
	                	  test.log(Status.PASS,"Correct Currency: " + value.split(";")[1] + " is displaying in PNR Remarks");  
	                  }
	                  else{
	                	  test.log(Status.FAIL, "Incorrect Currency is displaying in PNR Remarks");
	                  }
     		   }
     		  }
              	  
                else
                {
                	test.log(Status.FAIL, "No Match Found for Label Currency!");
                }
    }
     	  else 
           {
         	  regexpr = regexpr.split("Hnn")[0];	                  
                matchedString = searchPattern(sPNRSpecResp, regexpr);
                if( matchedString.contains("No Match Found"))
                	test.log(Status.FAIL, "Currency Label not found : " + regexpr);
            }
           break;
                         
        
           
        case "ConfermaID" :
            
            regexpr = FileReaderManager.getInstance().getConfigReader().properties1.getProperty("ConfermaID") ;
            regexpr = regexpr.replace("nn", seqNum);
            regexpr = regexpr.replace("HotelName",value );
            matchedString = searchPattern(sPNRSpecResp, regexpr);             
            if(! matchedString.contains("No Match Found"))
            	test.log(Status.PASS, "Conferma Deployment ID Label found on Line Number : " + matchedString);
            else
            {
            	test.log(Status.FAIL,"No Match Found for Label Conferma ID!");
            }
           break;

           
        
           
        case "ItineraryID" :
            
            regexpr = FileReaderManager.getInstance().getConfigReader().properties1.getProperty("ExpediaID") ;
            regexpr = regexpr.replace("nn", seqNum);                  
            String Itinerary  = searchPattern(sPNRSpecResp, regexpr);  
            String ExpediaID[] = Itinerary.split ("ID");
            matchedString = ExpediaID[1].replaceAll("\\s", "");
            System.out.println(matchedString);
            if(! Itinerary.contains("No Match Found"))
            {
            	test.log(Status.PASS,"Expedia Itinerary ID Label found on Line Number : "+Itinerary);
              if (! itineraryID.isEmpty() && matchedString.contains(itineraryID.split(": ")[1]))
            	  test.log(Status.PASS,"Expedia Itineray ID Label matched with PH application "+ itineraryID);
               else
               {
            	   test.log(Status.FAIL, "No Match Found for Label Expedia Itinerary ID" + itineraryID);
               } 
              }
             else
            {
            	 test.log(Status.FAIL, "No Match Found for Label Expedia Itinerary ID");
            }
                  break;
                  
        case "VoucherNumber" :
      	  
      	  regexpr = FileReaderManager.getInstance().getConfigReader().properties1.getProperty("VoucherNumber") ;
      	  regexpr = regexpr.replace("nn", seqNum);    
      	  regexpr = regexpr.replace("VoucherNumber", value);
           matchedString = searchPattern(sPNRSpecResp, regexpr);             
           if(! matchedString.contains("No Match Found"))
        	   test.log(Status.PASS,"Voucher Number Label found on Line Number : " + matchedString);
           else
           {
        	   test.log(Status.FAIL, "No Match Found for Label Voucher Number!! ");
           } 
           break;
           
        case "RealizedSavingCode" :
      	  
      	  regexpr = FileReaderManager.getInstance().getConfigReader().properties1.getProperty("RealizedSavingCode") ;
      	  regexpr = regexpr.replace("RemarkCode", value.split(";")[0]);
      	  if(value.split(";")[0].contains("VFF30")){
              	regexpr = regexpr.replace("nn", seqNum1); 
                }
                else{
              	regexpr = regexpr.replace("nn", seqNum);
                }
               regexpr = regexpr.replace("code", value.split(";")[1]);
           matchedString = searchPattern(sPNRSpecResp, regexpr);             
           if(! matchedString.contains("No Match Found"))
        	   test.log(Status.PASS,"Realized Saving Code Label found on Line Number : " + matchedString);
           else
           {
        	   test.log(Status.FAIL, "No Match Found for Label Realized Saving Code!");
        	   
           }
           break;
           
        case "VirtualCardDetails" :
      	  
      	  regexpr = FileReaderManager.getInstance().getConfigReader().properties1.getProperty("VirtualCardDetails") ;
      	  regexpr = regexpr.replace("nn", seqNum);
           regexpr = regexpr.replace("CardCode", value);
           matchedString = searchPattern(sPNRSpecResp, regexpr);             
           if(! matchedString.contains("No Match Found"))
        	   test.log(Status.PASS,"Virtual Card Details Label found on Line Number : " + matchedString);
           else
           {
        	   test.log(Status.FAIL, "No Match Found for Label Virtual Card Details!");
           }
           break;
           
           
        case "LowRoomRateValidate" :
            
            regexpr = FileReaderManager.getInstance().getConfigReader().properties1.getProperty("LowRoomRateValidate");
            regexpr = regexpr.replace("nn", seqNum);
                matchedString = searchPattern(sPNRSpecResp, regexpr);
            if(! matchedString.contains("No Match Found"))
              {          
            	test.log(Status.PASS,"Low Room Rate Found with details on line number : "+ matchedString);
                if(value.toUpperCase().contains("YES"))
                {
                if (! lowerroomRate.isEmpty() && matchedString.contains(lowerroomRate))
                	test.log(Status.PASS,"Low Room Rate matched with PH application : "+ lowerroomRate);
                else
                  {
                	test.log(Status.FAIL, "No Match Found for LowRoom rate Segment relation Field with rate: " + lowerroomRate);
                  }                    
                }
              }
            else
                   {
            	      test.log(Status.FAIL,"No Match Found for Label Low Room Rate!");
                   }
            break;


	}
		}
	catch (Exception e) {
	  	      screenShotPath = captureScreenShot();                  
	            System.out.println("Result : Fail");
	            test.log(Status.FAIL,"PNRAnalysisWithValues"+ "Not Matched!!",MediaEntityBuilder.createScreenCaptureFromPath(screenShotPath).build());
	     }

}
}
