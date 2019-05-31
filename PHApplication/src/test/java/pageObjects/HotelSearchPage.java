package pageObjects;

import static org.testng.Assert.assertTrue;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.text.ParseException;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;

import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;
import org.openqa.selenium.support.PageFactory;

import com.aventstack.extentreports.MediaEntityBuilder;
import com.aventstack.extentreports.Status;

import testBase.TestBase;

public class HotelSearchPage extends TestBase{

public HotelSearchPage(){
	PageFactory.initElements(driver, this);
}
	@FindBy(how=How.XPATH, using=".//*[@id='rbapollo']") WebElement ApolloGDS;
	@FindBy(how=How.XPATH, using=".//*[@id='rbamadeus']") WebElement AmadeusGDS;
	@FindBy(how=How.XPATH, using=".//*[@id='rbsabre']") WebElement SabreGDS;
	@FindBy(how=How.XPATH, using=".//*[@id='rbgalileo']") WebElement GalileoGDS;
	@FindBy(how=How.XPATH, using=".//*[@id='txtpnr']") WebElement PNRTextBox_HomePage;
	@FindBy(how=How.XPATH, using=".//*[@id='pnrtravellerlabel']")  WebElement PNRCheck;
	@FindBy(how = How.XPATH, using = "//*[@id='CheckOutDate']") WebElement CheckOutDatePath;
	@FindBy(how = How.XPATH, using = ".//*[@id='CheckInDate']") WebElement CheckInDatePath;
	@FindBy(how = How.XPATH, using = "//*[@id='ui-datepicker-div']/div[1]/div/div") WebElement CheckInDate1; 
	@FindBy(how = How.XPATH, using = "//*[@id='ui-datepicker-div']/div[2]/div/div") WebElement CheckInDate2;
	@FindBy(how = How.XPATH, using = "//*[@id='ui-datepicker-div']/div[2]/div/a/span") WebElement CheckInDate3;
	@FindBy(how = How.XPATH, using = "//*[@id='ui-datepicker-div']/div[1]/table/tbody") WebElement CheckInDate4;
	@FindBy(how = How.XPATH, using = "//*[@id='ui-datepicker-div']/div[2]/table/tbody") WebElement CheckInDate5;
    @FindBy(how = How.XPATH, using = "//*[@id='ui-datepicker-div']/div[1]/div/a/span']") WebElement CheckInDate6;
    
    /*BookAgainFlow*/
    
    @FindBy(how = How.XPATH, using = ".//*[@id='bookAgain_btn_pnr']/span/button") WebElement BookAgainFromHome;
    @FindBy(how = How.XPATH, using = "//*[@id='aetmIFrame']/div/div[5]/div[1]/div[2]/ul/li[3]/button") WebElement ClickOnPNRButton;
    @FindBy(how = How.XPATH, using = ".//*[@id='txtCnclOrMdfy']") WebElement BookingReferenceNo;
    @FindBy(how = How.XPATH, using = ".//*[@id='PnrBlk']/table/tbody/tr[2]/td[6]/a") WebElement BookAgainFromHomeCancel;
    
    
    /*Destination Hotel Search*/
    
    @FindBy(how = How.XPATH, using = "//*[@id='poidiv']/button") WebElement TypeOFDestination;
	@FindBy(how = How.XPATH, using = ".//*[@id='imgpoitype_HOTEL']") WebElement Hotel;
	@FindBy(how = How.XPATH, using = ".//*[@id='txtAddr']")WebElement DestinationBox; 
	@FindBy(how = How.XPATH, using = "html/body/div[11]/ul/li[1]/span[2][@class='List_hotelName_LI_span']") WebElement HotelDetailsWithoutPNR;
	@FindBy(how = How.XPATH, using = "html/body/div[10]/ul/li[1]/span[2][@class='List_hotelName_LI_span']") WebElement HotelDetailsWithPNR;
	@FindBy(how = How.XPATH, using = ".//*[@id='step1btn']") WebElement ShowAllHotels;
	@FindBy(how = How.XPATH, using = ".//*[@id='lnkChgSrch']") WebElement SearchAgain;
	@FindBy(how = How.XPATH, using = ".//a[contains(@id,'HTLSEQ')]") WebElement HotelID;
	@FindBy(how = How.XPATH, using = ".//*[@id='txtAddr']") WebElement Destination;
	@FindBy(how = How.XPATH, using = ".//a[contains(@id,'HTLSEQ') and @class='grid-number']") List<WebElement> AllHotels;
	@FindBy(how = How.XPATH, using = ".//*[@id='lnkMorePopularHotelsNext']") WebElement NextPopularHotelsLink;
	@FindBy(how = How.XPATH, using = ".//*[@id='txtcustomer']") WebElement CustomerDetailValue;
    @FindBy(how = How.XPATH, using = "html/body/div[10]/ul/li") WebElement wCustomerDetail;


	
	  
	  public String SelectHotel = ".//*[contains(@id,'htlbkbtn') and contains(@onclick,'hotelID')]" ;
	  public String ViewAdditionalRates = ".//a[@id='dcexAdBtnhotelID']" ;
	  public String CompleteRateDiv=".//*[@id='RATEShotelID']/li[1]/div[2]/button";
	  public String RateDiv= ".//*[@id='RatehotelID']";
	  public String RefundText= ".//*[contains(@id,'Rate')]//div[contains(@id,'hotelID')]//li[@class='priceValue relative']//span[contains(@id,'reflbl')]";
	  public String OnRequestBtn= ".//*[contains(@id,'onrqlnkhotelID')]";
	  public String ConfirmBooking=".//*[@id='TR_AddLink']";
	  public String AdditionalRateButton= ".//*[contains(@id,'Rate')]//div[contains(@id,'hotelID')]//p[contains(@id,'btnmorert')]/a";
	  public String AdditionalRatesDiv= ".//*[contains(@id,'Rate')]//ul[contains(@id,'hotelID')]";
	  public String AgainRefundText= ".//*[contains(@id,'Rate')]//ul[contains(@id,'refundIDHotel')]/li[@class='priceValue relative']/span[contains(@id,'reflbl')]";
	  public String RoomITRateCheck = ".//*[@src='images/roomIt.png']";
	  public String ViewRateDetailsRefundID= ".//*[contains(@id,'Rate')]//ul[contains(@id,'refundIDHotel')]//a[contains(@id,'ratesbtnrefundIDHotel')]";
	  public String PriceWaitBookRefundID= ".//*[contains(@id,'Rate')]//*[contains(@id,'refundIDPrice')]/div/h3";
	  public String BookHotelRefundID= ".//*[contains(@id,'Rate')]//ul[contains(@id,'refundIDHotel')]//a[contains(@id,'bookConBtnrefundIDHotel')]";
      public String RatesIcon= "//*[contains(@id,'Rate')]//ul[contains(@id,'refundIDHotel')]/li[@class='ratesIcon']/ul/li/a";
	  public String ModifyAdditionalRateButton= ".//*[@id='rtoutr_rateType']//div[contains(@id,'btnmorert')]/span/a";
	  public String ModifyAdditionalRatesDiv= ".//*[@id='rtoutr_rateType']/div[2]/div[contains(@class,'rate_row')]";
	  public String ModifyAgainRefundText= ".//*[@id='rtoutr_rateType']/div[2]/div[@id='refundID']//span[contains(@id,'reflbl')]";
	  public String ModifySelectRateRefundID= ".//*[@id='rtoutr_rateType']/div[2]/div[@id='refundID']//span[contains(@id,'ratesbtn')]/a";
	  public String ModifyBookHotelRefundID= ".//*[@id='rtoutr_rateType']/div[2]/div[@id='refundID']//a[contains(@onclick,'SelectThisRate')]/span[2]";
	  public String xBookingRefNo= ".//*[@id='txtCnclOrMdfy']";
	  public String xCustomerDetail = "html/body/div[10]/ul/li";
	  
	  
	 
	 
	public void selectionGDSAndPNR(String gds, String pnr, String TestCaseName) throws IOException
	  {
	    String pnrValue;
	    switch(gds)
	    {
	    case "Apollo":
	    	ApolloGDS.click();
	      break;
	    case "Amadeus":
	    	AmadeusGDS.click();
	      break;
	    case "Sabre":
	    	SabreGDS.click();
	      break;
	    case "Galileo":
	    	GalileoGDS.click();
	      break;
	    }
	    test.log(Status.PASS, "Click on '" + gds +"'"+"GDS Radio Button");
	    waitFor(2000);
	    PNRTextBox_HomePage.sendKeys(pnr);
	    waitFor(6000);
	    pnrValue = PNRCheck.getText();
	    if(!pnrValue.isEmpty())
	    {
	    	screenShotPath = captureScreenShot();
	    	test.log(Status.PASS, "Enter PNR '" + pnr +"' "+"in PNR Detail Box");
	    	
	    }
	    else
	    {
	    	screenShotPath = captureScreenShot();
	    	test.log(Status.FAIL, "Invalid PNR Entered", MediaEntityBuilder.createScreenCaptureFromPath(screenShotPath).build());
	    	assertTrue(!pnrValue.isEmpty());
	    	
	    }
	    waitFor(6000);
	   
	  }
	

	  
	  public void selectCheckOutDates(String checkOut) throws ParseException
		{
			DateFormat dateFormat = new SimpleDateFormat("dd MMMM yyyy");
			Calendar cal = Calendar.getInstance();
			//cal.add(Calendar.MONTH, Integer.parseInt(noOfDaysInAdvance));
			cal.add(Calendar.DATE, Integer.parseInt(checkOut));
			String checkOutDate = dateFormat.format(cal.getTime());  
			System.out.println(checkOutDate);
			CheckOutDatePath.click();
			if (checkOutDate.startsWith("0"))
				checkOutDate = checkOutDate.substring(1);
			checkOutDate = checkOutDate.split(" ")[0]+";"+checkOutDate.split(" ")[1]+" "+checkOutDate.split(" ")[2];
			waitFor(3000);
			selectDate(checkOutDate);
			test.log(Status.PASS, "Click on Check Out Date Calender");
			
		}
	  

		public void selectCheckInDates(String checkIn) throws ParseException
		{
			DateFormat dateFormat = new SimpleDateFormat("dd MMMM yyyy");
			Calendar cal = Calendar.getInstance();
			//cal.add(Calendar.MONTH, Integer.parseInt(noOfDaysInAdvance));
			cal.add(Calendar.DATE, Integer.parseInt(checkIn));
			String checkInDate = dateFormat.format(cal.getTime());  
			System.out.println(checkInDate);
			CheckInDatePath.click();
			if (checkInDate.startsWith("0"))
				checkInDate = checkInDate.substring(1);
			checkInDate = checkInDate.split(" ")[0]+";"+checkInDate.split(" ")[1]+" "+checkInDate.split(" ")[2];
			waitFor(3000);
			selectDate(checkInDate);
			test.log(Status.PASS, "Click on Check In Date Calender");
			
		}

		public void selectDate(String date) throws ParseException 
	    {
	            System.out.println("---------------------------------------------");
	            System.out.println("Action : Select Date");
	            
	            int flag=0;    
	            while(flag!=1)
	            {
	                ArrayList<WebElement> diffElements= new ArrayList<WebElement>();
	                diffElements.add(CheckInDate1);
	                diffElements.add(CheckInDate2);
	                diffElements.add(CheckInDate3);
	                diffElements.add(CheckInDate4);
	                diffElements.add(CheckInDate5);
	                diffElements.add(CheckInDate6);
	    			
	                
	                String[] monthYrTextOnCalendar={"",""};
	                
	                //Month and Year appearing on calendar opening 2 months ex.: May 2017
	                monthYrTextOnCalendar[0]=diffElements.get(0).getText();
	                monthYrTextOnCalendar[1]=diffElements.get(1).getText();
	                
	                //Splitting date coming from sheet containing numeric date(say 12) on index 0 and Month+Year(say May 2017) on index 1
	                String[] sheetDate=date.split(";");
	                
	                //Splitting Month+Year at separate indexes coming from sheet
	                String[] sheetDateMon=sheetDate[1].split(" ");
	                
	                //Splitting Month+Year at separate indexes coming from application calendar
	                String[] appDateMon=monthYrTextOnCalendar[0].split(" ");
	                
	                //Getting month value in integer that is coming from sheet
	                Date dateSheet= new SimpleDateFormat("MMM", Locale.ENGLISH).parse(sheetDateMon[0]);
	                Calendar calSheet = Calendar.getInstance();
	                calSheet.setTime(dateSheet);
	                int monthSheet = calSheet.get(Calendar.MONTH)+1;
	                System.out.println("Month in Sheet : "+monthSheet);
	                  
	                //Getting month value in integer that is coming from from calender appearing on application
	                Date dateApp= new SimpleDateFormat("MMM", Locale.ENGLISH).parse(appDateMon[0]);
	                Calendar calApp = Calendar.getInstance();
	                calApp.setTime(dateApp);
	                int monthApp = calApp.get(Calendar.MONTH)+1;
	                System.out.println("Month on App : "+monthApp);
	                  
	                if(monthYrTextOnCalendar[0].contains(sheetDate[1]))
	                {
	                     System.out.println("First Loop");
	                    diffElements.get(3).findElement(By.linkText(sheetDate[0])).click();
	                    System.out.println("Date "+ sheetDate[0] +" " + sheetDate[1] + " has been selected");
	                    flag++;
	                }
	                        
	                else if(monthYrTextOnCalendar[1].contains(sheetDate[1]))
	                {
	                     System.out.println("Second Loop");
	                    diffElements.get(4).findElement(By.linkText(sheetDate[0])).click();
	                    System.out.println("Date "+ sheetDate[0] +" " + sheetDate[1] + " has been selected");
	                    flag++;
	                }
	                
	                else if(monthSheet<monthApp)
	                {
	                     System.out.println("Third Loop");
	                    diffElements.get(5).click();
	                    System.out.println("Clicking on previous button to open previous month calendar");
	                }
	                        
	                else
	                {
	                     System.out.println("Fourth Loop");
	                    diffElements.get(2).click();
	                    System.out.println("Clicking on next button to open next month calendar");
	                }
	            }            
	         }
		
		
		 
	public void specificHotelSearch(String HotelName) throws IOException
		  {
			  
			  String hotelID, strXPath, pnrValue, action="",Rate="";
		      int eleSize,flag=0;
		      boolean RoomITFlag = false;
		      
		      
		      
		      element= TypeOFDestination;
		      test.log(Status.PASS, "Click on Destination Tab to select Different type of Destination");
		      waitFor(1000);
		      element.click();
		      element= Hotel;
		      
		      element.click();
		      test.log(Status.PASS, "Click on Hotel option");
		      
		     // assertTrue(Util.getWebElement(PNRValidate")).isEnabled(), "Check Search Button is Enabled");
		      
		      String[] RateHotelInfo=HotelName.split(";");
		      try{
		    	  int i=0,k=0;
		          while(flag==0 && i<3)
		          {
		          System.out.println("---------------------------------------------");
		          
		          element= DestinationBox;
		          element.clear();
		          element.click();
		          waitFor(1000);
		          element.sendKeys(RateHotelInfo[i]);
		          highlightElement(element);
		          
		          waitFor(8000);
		          
		          WebElement BtnClick = null;
				if(i<3 && k==0)
		          {
		        	  
		              pnrValue = PNRCheck.getText();
		        	  if (pnrValue.isEmpty())
		        		  element = HotelDetailsWithoutPNR;
		              else
		            	  element = HotelDetailsWithPNR;
		                
		             
		              if(element==null)
		              {
		            	  i++;
		            	  continue;
		              }
		            	  
		              else
		              {
		            	  
		            	  element.click();
		            	  k=1;
		            	  BtnClick= ShowAllHotels; 
		              }
		                         	                  
		          }
		          else if(k==1)
		          {
		        	  
		              element=HotelDetailsWithPNR;
		              if(element==null)
		              {
		            	  i++;
		            	  continue;
		              }
		              else
		              {
		            	  element.click();
		            	  BtnClick= SearchAgain;
		              }
		                         	                   
		          }
		          
		          BtnClick.click();
		          waitFor(20000);
		    	  
		          i++;
		          
		         
		         // WebElement SpecificHotel = driver.findElement(By.xpath(strXPath));
		          
		          WebElement SpecificHotel = HotelID;
		          hotelID = SpecificHotel.getAttribute("id");
		          hotelID = hotelID.replace("HTLSEQ", "");
		          waitFor(15000);
		                      
		          //Xpath of Book button
		          strXPath = SelectHotel;
		   	      strXPath = replaceText("hotelID",hotelID,strXPath);
		   	      element = driver.findElement(By.xpath(strXPath));
		   	      waitFor(8000);
		   	      highlightElement(element);
		   	      System.out.println(element.getText());
		   	   waitFor(8000);
		   	   if(element.getText().equalsIgnoreCase("get rates"))
		   	      {
		   	    	 
		   	       element.click();
		   	       waitFor(8000);
		   	      }
		   	      
		   	    strXPath = ViewAdditionalRates;
	  			strXPath = replaceText("hotelID",hotelID,strXPath);
	  			waitIfElementLocated(strXPath);
	  			if(driver.findElements(By.xpath(strXPath)).size()!=0)
	  			{
	  				highlightElement(driver.findElement(By.xpath(strXPath)));
	  				driver.findElement(By.xpath(strXPath)).click();
	  			}
		   	     
		   	      strXPath = CompleteRateDiv;
		          strXPath = replaceText("hotelID", hotelID, strXPath);
		          element = driver.findElement(By.xpath(strXPath)); 
		          
		          switch(RateHotelInfo[3])
		          {
		              case "CWT" :
		              case "CWV" :
		            	  Rate="rtoutr_RoomIt rates_";    
		                  strXPath = RateDiv;
		                  strXPath = replaceText("Rate",Rate,strXPath);
		                  strXPath = replaceText("hotelID",hotelID,strXPath);
		                  
		                  //element = waitForElementClickable(strXPath, 50);
		                  element=findElement(strXPath);
		                  waitFor(2000);

		                  eleSize= driver.findElements(By.xpath(strXPath)).size();
		                  if( eleSize != 0)
		                  {
		                	  RoomITFlag = true;
		                 	  // Xpath of Refund text
		                      strXPath = RefundText;
		                      strXPath = replaceText("Rate",Rate,strXPath);
		                      strXPath = replaceText("hotelID",hotelID,strXPath);
		                      element=findElement(strXPath);
		                      waitFor(2000);
		                      action=checkRefundableCWTRates(Rate,strXPath,hotelID,RateHotelInfo[3]);
		                   }
		                   break;   
		             
		              case "Aggregator" :
		                  Rate="rtoutr_Aggregator_";
		                      
		                 strXPath = RateDiv;
		                 strXPath = replaceText("Rate",Rate,strXPath);
		                 strXPath = replaceText("hotelID",hotelID,strXPath);
		               //element = waitForElementClickable(strXPath, 50);
		                 element=findElement(strXPath);
		                 waitFor(2000);

		                 eleSize= driver.findElements(By.xpath(strXPath)).size();
		                 
		                 if( eleSize != 0 && RateHotelInfo[4].equals("EAN"))
		                 {                          
		                     action = checkRefundableEANRates(hotelID,RateHotelInfo[4]);  
		                 }
		                 else if( eleSize != 0 && RateHotelInfo[4].equals("BC"))
		                 {                          
		                    action = checkRefundableBCRates(hotelID,RateHotelInfo[4]);  
		                 }
		                 else
		                 log.info("Wrong input provided");
		                 break;  
		                   
		              case "Public" :
		            	  Rate="rtoutr_General_";
		                  strXPath = RateDiv;
		                  strXPath = replaceText("Rate",Rate,strXPath);
		                  strXPath = replaceText("hotelID",hotelID,strXPath);
		                //element = waitForElementClickable(strXPath, 50);
		                  element=findElement(strXPath);
		                  waitFor(2000);

		                  eleSize= driver.findElements(By.xpath(strXPath)).size();
		                  
		                  if( eleSize != 0)
		                  {
		                 	   waitFor(2000);
		                      // Xpath of Refund text
		                 	  strXPath = RefundText;
		                      strXPath = replaceText("Rate",Rate,strXPath);
		                      strXPath = replaceText("hotelID",hotelID,strXPath);
		                      element = driver.findElement(By.xpath(strXPath));
		                      highlightElement(element);
		                      waitFor(2000);
		                     action=checkRefundableCWTRates(Rate,strXPath,hotelID,RateHotelInfo[3]);  
		                  }
		                  break;
		                  
		              case "OnRequest" :
		            	  
		                  strXPath = OnRequestBtn;
		                  strXPath = replaceText("hotelID",hotelID,strXPath);
		                  element = driver.findElement(By.xpath(strXPath));
		                  highlightElement(element);
		                  waitFor(2000);
		                  element.click();
		                  waitFor(5000);
		                  strXPath=ConfirmBooking;
		                  element= driver.findElement(By.xpath(strXPath));
		                  highlightElement(element);
		                  action="performed";
		                  break;

		          }
		         
		          if(!action.equals("performed") && i == 3  && RoomITFlag == true &&  RateHotelInfo[3]!="Aggregator" && RateHotelInfo[3]!="Public" && RateHotelInfo[3]!="OnRequest" )
		          {
		        	  RateHotelInfo[3] = "CWT";
		        	  i--;
		          }
		          else if(!action.equals("performed") && RoomITFlag == true &&  RateHotelInfo[i].isEmpty() && RateHotelInfo[3]!="Aggregator" && RateHotelInfo[3]!="Public" && RateHotelInfo[3]!="OnRequest" )
		          {
		        	  RateHotelInfo[3] = "CWT";
		        	  i--;
		          }
		          else if(action.equals("performed"))
		          {
		        	  flag++;
		          }
		          else
		        	  System.out.println("Executing same flow with other set of data");
		    	  }
		          i--;	
		          test.log(Status.PASS, "Hotel Selected '" + RateHotelInfo[i--] +"'");
		          //System.out.println("Hotel Selected '" + RateHotelInfo[i--] +"'");
		          System.out.println("Completed");
		          System.out.println("Action : SpecificHotelSearch");
		          System.out.println("Status   : Pass");
		      	  //test.log(Status.INFO, "SpecificHotelSearch");
		      	  test.log(Status.PASS, "Checking "+RateHotelInfo[3]+" Rates and Refund Texts for selected Hotel");
		      }
		      catch(Exception e){
		     
		    	  screenShotPath = captureScreenShot();
		    	  test.log(Status.INFO, "SpecificHotelSearch");
		    	 // test.log(Status.FAIL, "No Hotel Available with the search criteria mentioned");
				  test.log(Status.FAIL, "No Hotel Available with the search criteria mentioned", MediaEntityBuilder.createScreenCaptureFromPath(screenShotPath).build());
		          System.out.println("Result : Fail");
		          assertTrue(screenShotPath.isEmpty());
		      
		  }
		      
		}
		  
		  public String checkRefundableCWTRates(String Rate,String RateText,String hotelID,String RoomITRate) throws InterruptedException, IOException
		  {
		 int eleSize;

		      System.out.println("Starting this function");
		      String  refundID,refundIDPrice,refundIDHotel,action="";
		      element = waitIfElementLocated(RateText);
		      String RefundText=element.getText();
		      System.out.println("Refund Text : "+RefundText);
		      
		      strXPath= AdditionalRateButton;
		      strXPath= replaceText("Rate",Rate,strXPath);
		      strXPath= replaceText("hotelID",hotelID,strXPath);
		     
		      element = waitIfElementLocated(strXPath);
		      if(element==null)
		          return action="";

		      element.click();
		      waitFor(4000);
		      
		      strXPath = AdditionalRatesDiv;
		      strXPath= replaceText("Rate",Rate,strXPath);
		      strXPath= replaceText("hotelID",hotelID,strXPath);
		      element = waitIfElementLocated(strXPath);                      
		      List <WebElement> AdditonalRates = driver.findElements(By.xpath(strXPath));
		      for(WebElement s : AdditonalRates) 
		      {
		    	  boolean i=false;
		    	  refundID = s.getAttribute("id");
		          refundIDPrice = refundID.replace("RTLST"+hotelID, "");
		          refundIDHotel = refundID.replace("RTLST", "");
		              
		          // XPath of Refund Texts
		          strXPath= AgainRefundText;
		          strXPath= replaceText("Rate",Rate,strXPath);
		          strXPath= replaceText("refundIDHotel",refundIDHotel,strXPath);
		              
		          element = waitIfElementLocated(strXPath);
		          RefundText=element.getText();
		          System.out.println("Again Refund Text : "+RefundText);
		          
		          strXPath= RoomITRateCheck;
		          strXPath= replaceText("Rate",Rate,strXPath);
		          strXPath= replaceText("hotelID",hotelID,strXPath);
		          //element = findElement(strXPath);
		          waitIfElementLocated(strXPath);
		          eleSize= s.findElements(By.xpath(strXPath)).size();
		          if(RoomITRate.equals("CWV") && eleSize != 0)
		          {
		              if(RefundText.equals("Non-refundable") || RefundText.equals("Deposit required") || RefundText.equals("Prepayment required"))
		              {
		                 System.out.println("Search for the next Additional Rate");
		              }
		              else
		              {
		            	  i=true;
		            	  
		              }
		          }
		          else if(RoomITRate.equals("CWT") && eleSize == 0)
		          {
		              if(RefundText.equals("Non-refundable") || RefundText.equals("Deposit required") || RefundText.equals("Prepayment required"))
		              {
		                 System.out.println("Search for the next Additional Rate");
		              }
		              else
		              {
		            	  
		            	  i=true;
		              }
		          }
		          else  if(RoomITRate.equals("Public"))
		          {
		              if(RefundText.equals("Non-refundable") || RefundText.equals("Deposit required") || RefundText.equals("Prepayment required"))
		              {
		                 System.out.println("Search for the next Additional Rate");
		              }
		              else
		              {
		            	  i=true;
		              }
		          }
		          
		       if(i==true)
		          {
		          	  // XPath of Select Rate
		              strXPath= ViewRateDetailsRefundID;
		              strXPath= replaceText("Rate",Rate,strXPath);
		              strXPath= replaceText("refundIDHotel",refundIDHotel,strXPath);
		              element = waitIfElementLocated(strXPath);
		              element.click();
		              waitFor(15000);
		                  
		              strXPath= PriceWaitBookRefundID;
		              strXPath= replaceText("Rate",Rate,strXPath);
		              strXPath= replaceText("refundIDPrice",refundIDPrice,strXPath);
		              element=waitIfElementLocated(strXPath);
		              if(element==null)
		            	  continue;
		                
		              //XPath of Book Continue Button
		              strXPath= BookHotelRefundID;
		              strXPath= replaceText("Rate",Rate,strXPath);
		              strXPath= replaceText("refundIDHotel",refundIDHotel,strXPath);
		             element = waitIfElementLocated(strXPath);
		              element.click();
		              waitFor(10000);
		              strXPath=ConfirmBooking;
		              waitIfElementLocated(strXPath);
		              action="performed";
		              break;
		          }
		      }
		     
		   
		    return action;
		  }

		  /**
		 * Checking the validation - Rates with confition "non refundable", "deposit required", “prepayment required” will only be picked up for
		 * booking 
		 * @throws IOException 
		 */
 public String checkRefundableEANRates(String hotelID,String AggType) throws InterruptedException, IOException
		  {
		      System.out.println("Starting this function");
		      String refundID, refundIDHotel, refundIDPrice, action="";
		      String Rate= "rtoutr_Aggregator_";
		      
		      // Xpath of Additional Rates button
		      strXPath= AdditionalRateButton;
		      strXPath= replaceText("Rate",Rate,strXPath);
		      strXPath= replaceText("hotelID",hotelID,strXPath);
		      
		      element = waitIfElementLocated(strXPath);
		      if(element==null)
		          return action="";

		      element.click();
		      waitFor(4000);
		      
		      strXPath= AdditionalRatesDiv;
		      System.out.println(strXPath);
		      strXPath= replaceText("Rate",Rate,strXPath);
		      System.out.println(strXPath);
		      strXPath= replaceText("hotelID",hotelID,strXPath);
		      System.out.println(strXPath);
		      
		      List <WebElement> AdditonalRates = driver.findElements(By.xpath(strXPath));
		      for(WebElement s : AdditonalRates) 
		      {
		            refundID = s.getAttribute("id");
		          refundIDPrice = refundID.replace("RTLST"+hotelID, "");
		          refundIDHotel = refundID.replace("RTLST", "");
		          
		          // XPath of Refund Texts
		          strXPath= AgainRefundText;
		          strXPath= replaceText("Rate",Rate,strXPath);
		          strXPath= replaceText("refundIDHotel",refundIDHotel,strXPath);
		   
		          element = waitIfElementLocated(strXPath);
		          String RefundText=element.getText();
		          System.out.println("Again Refund Text : "+RefundText);
		          if(RefundText.equals("Non-refundable") || RefundText.equals("Deposit required") || RefundText.equals("Prepayment required"))
		          {
		            System.out.println("Search for the next Additional Rate");
		          }
		         
		          else
		          {
		            System.out.println("Searching in else block");
		                                            
		              System.out.println("Aggregator Type to be selected is : "+AggType);
		              strXPath= RatesIcon;
		              strXPath= replaceText("Rate",Rate,strXPath);
		              strXPath= replaceText("refundIDHotel",refundIDHotel,strXPath);
		              element = waitIfElementLocated(strXPath);
		                         
		              if(element.getText().equals(AggType))
		              {
		                  // XPath of Select Rate
		                  strXPath= ViewRateDetailsRefundID;
		                  strXPath= replaceText("Rate",Rate,strXPath);
		                  strXPath= replaceText("refundIDHotel",refundIDHotel,strXPath);
		                  element = waitIfElementLocated(strXPath);
		                  element.click();
		                  //waitFor(10000);
		                  
		                  strXPath= PriceWaitBookRefundID;
		                  strXPath= replaceText("Rate",Rate,strXPath);
		                  strXPath= replaceText("refundIDPrice",refundIDPrice,strXPath);
		                  element= waitIfElementLocated(strXPath);
		                  
		                  if(element==null)
		                	  continue;
		                  
		                  // XPath of Book Continue Button
		                  strXPath= BookHotelRefundID;
		                  strXPath= replaceText("Rate",Rate,strXPath);
		                  strXPath= replaceText("refundIDHotel",refundIDHotel,strXPath);
		                  element = waitIfElementLocated(strXPath);
		                  element.click();
		                  strXPath=ConfirmBooking;
		                  element= waitIfElementLocated(strXPath);
		                  action="performed";
		                 // waitFor(15000); 
		               }
		                         
		               else
		                    System.out.println("Search again for "+AggType+" Aggregator rate"); 
		          }
		          
		          if(action.equals("performed"))
		            break;
		      }
		      
		      return action;
		  }

		
		 /**
		  * Not checking the validation - Rates with condition "non refundable", "deposit required", “prepayment required” for Booking.com rates
		  * and directly accessing them for the booking creation
		  * @throws IOException 
		  */

		 public String checkRefundableBCRates(String hotelID,String AggType) throws InterruptedException, IOException
		 {
		 	  
		 	  //System.out.println("Starting this function");
		     String refundID, refundIDHotel, refundIDPrice, action="";
		     String Rate= "rtoutr_Aggregator_";
		        
		     // Xpath of Additional Rates button
		     strXPath= AdditionalRateButton;
		     strXPath= replaceText("Rate",Rate,strXPath);
		     strXPath= replaceText("hotelID",hotelID,strXPath);
		     
		     element =waitIfElementLocated(strXPath);
		     if(element==null)
		         return action="";

		     element.click();
		     waitFor(4000);
		     
		     strXPath= AdditionalRatesDiv;
		     System.out.println(strXPath);
		     strXPath= replaceText("Rate",Rate,strXPath);
		     System.out.println(strXPath);
		     strXPath= replaceText("hotelID",hotelID,strXPath);
		     System.out.println(strXPath);
		     
		     List <WebElement> AdditonalRates = driver.findElements(By.xpath(strXPath));
		     highlightElement(element);
		     for(WebElement s : AdditonalRates) 
		     {
		   	  refundID = s.getAttribute("id");
		         refundIDPrice = refundID.replace("RTLST"+hotelID, "");
		         refundIDHotel = refundID.replace("RTLST", "");
		         
		         strXPath= RatesIcon;
		         strXPath= replaceText("Rate",Rate,strXPath);
		         strXPath= replaceText("refundIDHotel",refundIDHotel,strXPath);
		         element = waitIfElementLocated(strXPath);
		           		  
		         if(element.getText().equals(AggType))
		         {
		       	  // XPath of Select Rate
		       	  strXPath= ViewRateDetailsRefundID;
		             strXPath= replaceText("Rate",Rate,strXPath);
		             strXPath= replaceText("refundIDHotel",refundIDHotel,strXPath);
		             element = waitIfElementLocated(strXPath);
		             element.click();
		             //waitFor(10000);
		             
		             strXPath= PriceWaitBookRefundID;
		             strXPath= replaceText("Rate",Rate,strXPath);
		       	  	 strXPath= replaceText("refundIDPrice",refundIDPrice,strXPath);
		             element= waitIfElementLocated(strXPath);
		             if(element==null)
		           	  continue;
		             
		             // XPath of Book Continue Button
		             strXPath= BookHotelRefundID;
		             strXPath= replaceText("Rate",Rate,strXPath);
		             strXPath= replaceText("refundIDHotel",refundIDHotel,strXPath);
		             element = waitIfElementLocated(strXPath);
		             element.click();
		             strXPath=ConfirmBooking;
		             element= waitIfElementLocated(strXPath);
		             action="performed";
		            // waitFor(15000); 
		          }
		          		  
		          else
		       	   System.out.println("Search again for "+AggType+" Aggregator rate"); 
		     
		         if(action.equals("performed"))
		   	      break;
		     }
		     
		     return action;
		 }
		 public void BookAgainFromHome() throws ParseException
			{
				waitForElement(BookAgainFromHome,5, "Book Again From Home Page");
				waitFor(2000);
				clickelement(BookAgainFromHome, "Book Again From Home Page");
				waitFor(2000);
			}

		public void ReadAndEnterBookingRefNo(String RefNO) throws ParseException, IOException
			{
				waitIfElementLocated(xBookingRefNo);
				
				settext(BookingReferenceNo," Reference Number ",RefNO);
				waitFor(2000);		
			}
			public void ClickOnPNRButton() throws ParseException, IOException
			{
			
				clickelement(ClickOnPNRButton, "View Cancel/Modify From Home Page");
				waitFor(4000);		
			}	
			
			 public void BookAgainFromHomeCancel() throws ParseException
				{
					waitForElement(BookAgainFromHomeCancel,5, "BookAgainFromHome Cancelflow");
					waitFor(2000);
					clickelement(BookAgainFromHomeCancel, "BookAgainFromHomeButton");
					waitFor(2000);
					
				}
			 
			 public void enterDestination(String destination) throws Exception
             {
                   try{
                   highlightElement(Destination);
                    Destination.sendKeys(destination); 
                    waitFor(9000);
                   highlightElement(HotelDetailsWithPNR);
                   clickelement(HotelDetailsWithPNR, "Select Destination");
                   System.out.println("Completed");
                System.out.println("Action : SpecificHotelSearch");
                System.out.println("Status   : Pass");
              //test.log(Status.INFO, "SpecificHotelSearch");
              test.log(Status.PASS, "Successfully entered "+destination+" as destination");
           
                    waitFor(2000);
                   ShowAllHotels.click();
                   waitFor(10000);
                   System.out.println("Completed");
                System.out.println("Action : SpecificHotelSearch");
                System.out.println("Status   : Pass");
              //test.log(Status.INFO, "SpecificHotelSearch");
              test.log(Status.PASS, "Successfully able to click ShowAllHotels Button");
           
                    }
                   catch(Exception e){
                        
                      screenShotPath = captureScreenShot();
                      test.log(Status.INFO, "enterDestination");
                     // test.log(Status.FAIL, "No Hotel Available with the search criteria mentioned");
                            test.log(Status.FAIL, "Failed to enter the hotel or unable to click ShowAllHotels button", MediaEntityBuilder.createScreenCaptureFromPath(screenShotPath).build());
                       System.out.println("Result : Fail");
                       assertTrue(screenShotPath.isEmpty());
                   
               }
                   }
			 public void DestinationSearch(String data) throws InterruptedException, IOException
             {
                       
                        String hotelID, strXPath,action="", Rate=""; 
                        int flag=0;
                        try
                        {
                        while(flag==0)
                        {
                               System.out.println("---------------------------------------------");
                               //WebDriverWait wait = new WebDriverWait(driver,30);
                               //wait.until(ExpectedConditions.presenceOfElementLocated((By) AllHotels));
                              // waitForElement(AllHotels, 30, "All Hotels");
                               waitFor(15000);
                               for(WebElement w : AllHotels) 
                               {
                                      ((JavascriptExecutor)driver).executeScript("window.scrollTo(0,"+w.getLocation().y+")");
                                      hotelID = w.getAttribute("id");
                                      hotelID = hotelID.replace("HTLSEQ", "");
                                      switch(data)
                                      {
                                                 case "CWT" :
                                                 case "CWV" :
                                                        int eleSize;
                                                        Rate="rtoutr_RoomIt rates_";
                                                        //Xpath of Book button
                                                        
                                                        //waitFor(4000);
                                                        
                                          //Xpath of Book button
                                         strXPath = SelectHotel;
                                         strXPath = replaceText("hotelID",hotelID,strXPath);
                                         element= waitIfElementLocated(strXPath);
                                         System.out.println(element.getText());
                                         if(!element.getText().contains("On request"))
                                         {
                                         waitFor(4000);
                                      
                                            
                                             element.click();
                                          waitFor(10000);
                                     
                                          strXPath = ViewAdditionalRates;
                                          strXPath = replaceText("hotelID",hotelID,strXPath);
                                          if(driver.findElements(By.xpath(strXPath)).size()!=0)
                                          {
                                                highlightElement(driver.findElement(By.xpath(strXPath)));
                                                driver.findElement(By.xpath(strXPath)).click();
                                          }    
                                       
                                         strXPath = CompleteRateDiv;
                                         strXPath = replaceText("hotelID", hotelID, strXPath);
                                         element= waitIfElementLocated(strXPath);
                                              
                                                        strXPath = RateDiv;
                                                        strXPath = replaceText("Rate",Rate,strXPath);
                                                        strXPath = replaceText("hotelID",hotelID,strXPath);
                                                        //element = waitForElementClickable(strXPath, 10);
                                                        eleSize= driver.findElements(By.xpath(strXPath)).size();
                                                        
                                                        if( eleSize != 0)
                                                        {
                                                              waitFor(2000);
                                                              // Xpath of Refund text
                                                              strXPath = RefundText;
                                                              strXPath = replaceText("Rate",Rate,strXPath);
                                                              strXPath = replaceText("hotelID",hotelID,strXPath);
                                                               action=checkRefundableCWTRates(Rate,strXPath,hotelID,data);
                                    
                                                        }
                                                        else
                                                              System.out.println("RoomIt rates are not available in this hotel");
                                                        break; 
                                      }
                                      }
                                      
                                     if(!action.equals("performed"))
                                         data = "CWT";          
                            else if(action.equals("performed"))
                                break;
                            else
                               System.out.println("Go for next hotel in the list");
                        }
                        if(action.equals("performed"))
                               flag++;
                        else
                        {
                               System.out.println("Loading new set of hotels in the list by clicking on next button");
                               
                              
                               highlightElement(NextPopularHotelsLink);
                               NextPopularHotelsLink.click();
                        }
                               
                        }
                        waitFor(4000);
                        System.out.println("Completed");
                        System.out.println("Action : NonSpecificPopularHotelSearch");
                        System.out.println("Status   : Pass");
                        test.log(Status.PASS, "Checking "+data+" rates and Refund Texts for selected Hotel");
                        }
                        
                        catch(Exception e){
                              screenShotPath = captureScreenShot();
                                   test.log(Status.INFO, "DestinationSearch");
                                  // test.log(Status.FAIL, "No Hotel Available with the search criteria mentioned");
                                          test.log(Status.FAIL, "No Hotel Available with the search criteria mentioned", MediaEntityBuilder.createScreenCaptureFromPath(screenShotPath).build());
                                    System.out.println("Result : Fail");
                                    assertTrue(screenShotPath.isEmpty());
                            
                      }     
              }


             public void selectionGDSAndCustomerDetail(String gds, String CustomerDetail, String TestCaseName) throws IOException
             {
               //String pnrValue;
               switch(gds)
               {
               case "Apollo":
                           ApolloGDS.click();
                 break;
               case "Amadeus":
                           AmadeusGDS.click();
                 break;
               case "Sabre":
                           SabreGDS.click();
                 break;
               case "Galileo":
                           GalileoGDS.click();
                 break;
               }
               test.log(Status.PASS, "Click on '" + gds +"'"+"GDS Radio Button");
               waitFor(2000);
                           settext(CustomerDetailValue," Customer selection textbox ",CustomerDetail);
               waitFor(2000);
               waitIfElementLocated(xCustomerDetail);
                           clickelement(wCustomerDetail, "Customer Details to be selected");
               waitFor(2000);
           test.log(Status.PASS, "Enter PNR '" + CustomerDetail +"' "+"in Customer selection textbox Detail Box");
              
             }


}
