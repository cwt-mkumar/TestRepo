package pageObjects;

import static org.testng.Assert.assertTrue;

import java.io.IOException;
import java.util.List;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import com.aventstack.extentreports.MediaEntityBuilder;
import com.aventstack.extentreports.Status;

import managers.FileReaderManager;
import testBase.TestBase;

public class ModifyBookingPage extends TestBase  {
	
	public ModifyBookingPage(){
		PageFactory.initElements(driver, this);
	}
	
	@FindBy(xpath= ".//*[@id='ctrlGetBkngDtls_divChangesPermitted']/div[2]/div/p/a")WebElement ModifyCheckInAndCheckOut;
	@FindBy(xpath= ".//*[@id='Img4']")WebElement ModifyDateIncrease;
	@FindBy(xpath= ".//*[@id='hlnkGetRates']")WebElement GetModifiedRates;
	@FindBy(xpath= ".//*[@id='divRates']/div")WebElement NewRateDiv;
	@FindBy(xpath= ".//*[@id='rtoutr_rateType']/div[2]/div[@id='refundID']//a[contains(@onclick,'SelectThisRate')]/span[2]")WebElement ModifyBookHotelRefundID;
	@FindBy(xpath= ".//*[@id='rtoutr_rateType']/div[2]/div[@id='refundID']//span[contains(@id,'ratesbtn')]/a")WebElement ModifySelectRateRefundID;
	@FindBy(xpath= ".//*[@id='rtoutr_rateType']//div[contains(@id,'btnmorert')]/span/a")WebElement ModifyAdditionalRateButton;
	@FindBy(xpath= ".//*[@id='ddlHtlEmailFax']")WebElement HotelCommunication ;
	@FindBy(xpath= ".//*[@id='ModSubmitDiv']/div/div[1]/a/span[2]/em")WebElement ModifyBooking ;
	@FindBy(xpath= ".//*[@id='ddlCommToHtl']")WebElement ReasonForNotSending;
	@FindBy(xpath= ".//*[@id='txtCommToHtlOther']")WebElement ReasonForNotSendingReason;
	@FindBy(xpath= ".//*[@id='ctrlGetBkngDtls_divChangesPermitted']/div[3]/div/p/a")WebElement ModifyRoomOrRate;
	@FindBy(xpath= ".//*[@id='hlnkGetRates']")WebElement GetModifyRates;
	@FindBy(xpath= ".//*[@id='rtoutr_RoomIt rates']//div[contains(@id,'RTLST_')]")WebElement AdditionalRates;
	@FindBy(xpath= ".//*[@id='CheckOutDate']")WebElement CheckOutDateCalender;
	
	public String RoomITRateCheck =  ".//*[@src='images/roomIt.png']";
	public String ModifyRefundText= ".//*[@id='rtoutr_rateType']/div[2]/div/div[2]/span[2]/span[3]";
	public String xModifyAdditionalRateButton= ".//*[@id='rtoutr_rateType']//div[contains(@id,'btnmorert')]/span/a"; 
	public String ModifyAdditionalRatesDiv= ".//*[@id='rtoutr_rateType']/div[2]/div[contains(@class,'rate_row')]";
	public String ModifyAgainRefundText= ".//*[@id='rtoutr_rateType']/div[2]/div[@id='refundID']//span[contains(@id,'reflbl')]";
	public String xModifySelectRateRefundID= ".//*[@id='rtoutr_rateType']/div[2]/div[@id='refundID']//span[contains(@id,'ratesbtn')]/a";
    public String xModifyBookHotelRefundID= ".//*[@id='rtoutr_rateType']/div[2]/div[@id='refundID']//a[contains(@onclick,'SelectThisRate')]/span[2]";
    public String ModifySelectRate= ".//*[@id='rtoutr_rateType']/div[2]/div/div[2]/span[3]/span[1]/a";
    public String ModifyBookHotel= ".//*[@id='rtoutr_rateType']/div[2]/div[1]/div[3]/div[2]/span[2]/a/span[2]";
    public String xHotelCommunication = ".//*[@id='ddlHtlEmailFax']";
    public String xAdditionalRates = ".//*[@id='rtoutr_RoomIt rates']//div[contains(@id,'RTLST_')]";
    public String xModifyCheckInDate = ".//*[@id='ui-datepicker-div']/div[1]/div/div;.//*[@id='ui-datepicker-div']/div[2]/div/div;.//*[@id='ui-datepicker-div']/div[2]/div/a/span;.//*[@id='ui-datepicker-div']/div[1]/table/tbody;.//*[@id='ui-datepicker-div']/div[2]/table/tbody;.//*[@id='ui-datepicker-div']/div[1]/div/a/span";
    
    
    public String RoomRateDiv= ".//*[@id='rtoutr_RoomIt rates']/div[2]";
    public String CompareAdditionalRateButton= ".//*[@id='btnmorertAddtionalID']/span/a";
    public String OldRoomRate=  ".//*[@id='subttnight']";
    public String NewRoomRate= ".//*[@id='rateslink_refundID']";
    public String CompareRefundText= ".//*[@id='rtoutr_RoomIt rates']/div[2]/div[contains(@id,'refundID')]//span[contains(@id,'reflbl')]";
    public String CompareSelectRate= ".//*[@id='rtoutr_RoomIt rates']/div[2]/div[contains(@id,'refundID')]//span[contains(@id,'ratesbtn')]/a";
    public String CompareBookHotel=  ".//*[@id='rtoutr_RoomIt rates']/div[2]/div[contains(@id,'refundID')]//a[contains(@onclick,'SelectThisRate')]/span[2]";
	
	public void ModifyCheckInAndCheckOut()
	{
		waitForElement(ModifyCheckInAndCheckOut, 20, "ModifyCheckInAndCheckOut");
		clickelement(ModifyCheckInAndCheckOut, "ModifyCheckInAndCheckOut button");
		waitFor(4000);
	}
	public void ModifyDateIncrease() throws IOException
	{
		   int nextDateCount = 0; 
		   try
		   {
			   do{
				   //Increase Date by one day
				   clickelement(ModifyDateIncrease, "Modify Date Increase Check In button");
				   waitFor(5000);
				   
				   waitForElement(GetModifiedRates, 20, "GetModifiedRates");
				   clickelement(GetModifiedRates, "Get rates button");
				   waitFor(10000);
				   
				   element = NewRateDiv;
				   if (element == null)
					   break;
				   nextDateCount++;
			   }while (element.getText().contains("No rates available") && nextDateCount <= 15);
			   
		   }catch(Exception e){
			   screenShotPath = captureScreenShot();
		    	test.log(Status.FAIL, "No room Rate found during modification",MediaEntityBuilder.createScreenCaptureFromPath(captureScreenShot()).build());
		    	 assertTrue(screenShotPath.isEmpty());
		   }
	}
		   
		   public void ModifyCheckRefundableAllRates(String data) throws IOException
			{
			   
			    
			        String action="",strXPath, rateType[];
			        int eleSize;
			        rateType = data.split(";");
			        try
			        {
			        	strXPath= xModifyAdditionalRateButton;
			            strXPath= replaceText("rateType",rateType[0],strXPath);
			            
			            waitFor(4000);
			            element = waitIfElementLocated(strXPath);
				   	    clickelement(element, "Modify AdditionalRate Button");		               
			            strXPath= ModifyAdditionalRatesDiv;
			            strXPath= replaceText("rateType",rateType[0],strXPath);
			            waitFor(4000);
			            waitIfElementLocated(strXPath);
			            
			            String refundID = "";
			            List <WebElement> AdditonalRates = driver.findElements(By.xpath(strXPath));
			            while(!action.equals("performed"))
			            {
			            	
			            for(WebElement s : AdditonalRates) 
			            {
			            	boolean i=false;
			            	refundID = s.getAttribute("id");
			                 
			                // XPath of Refund Texts
			                strXPath= ModifyAgainRefundText;
			                strXPath= replaceText("rateType",rateType[0],strXPath);
			                strXPath= replaceText("refundID",refundID,strXPath);
			                waitIfElementLocated(strXPath);
				            
			                String RefundText=element.getText();
			                System.out.println("Refund Text : "+RefundText);
			                
			                
			                strXPath= RoomITRateCheck;         
			                eleSize= s.findElements(By.xpath(strXPath)).size();
			                if(rateType[1].equals("CWV") && eleSize != 0)
			                {
			                	if(RefundText.equals("Non-refundable") || RefundText.equals("Deposit required") || RefundText.equals("Prepayment required"))
			                    {
			                		System.out.println("Search for the next Additional Rate");
			                    }
			                	else
			                	{
			                		i = true;
			                	}
			                }
			                else if(rateType[1].equals("CWT") && eleSize == 0)
			                {
			                	if(RefundText.equals("Non-refundable") || RefundText.equals("Deposit required") || RefundText.equals("Prepayment required"))
			                    {
			                		System.out.println("Search for the next Additional Rate");
			                    }
			                	else
			                	{
			                		i = true;
			                	}
			                }
			                else if(rateType[0].equals("Public rates") || (rateType[0].equals("Aggregator") && rateType[1].equals("EAN")))
			                {
			                	if(RefundText.equals("Non-refundable") || RefundText.equals("Deposit required") || RefundText.equals("Prepayment required"))
			                    {
			                		System.out.println("Search for the next Additional Rate");
			                    }
			                	else
			                	{
			                		i = true;
			                	}
			                }
			                	
			               if(i==true)
			                    {
			                    	// XPath of Select Rate
			                        strXPath= xModifySelectRateRefundID;
			                        strXPath= replaceText("rateType",rateType[0],strXPath);
			                        strXPath= replaceText("refundID",refundID,strXPath);
			                        
			                        element = waitIfElementLocated(strXPath);
							   	    clickelement(element, "ModifySelectRateRefundID Button");
			                        waitFor(8000);
			                                    
			                        action="performed";
			                        System.out.println(action);
			                        break;
			                    }
			               
			                
			               if(rateType[0].equals("Aggregator") && rateType[1].equals("BC"))
			                {
			                	// XPath of Select Rate
			                    strXPath= xModifySelectRateRefundID;
			                    strXPath= replaceText("rateType",rateType[0],strXPath);
			                    strXPath= replaceText("refundID",refundID,strXPath);
			                    element =  waitIfElementLocated(strXPath);
			                   
						   	    clickelement(element, "ModifySelectRateRefundID Button");
					            //click(strXPath, "ModifySelectRateRefundID Button");
			                    waitFor(8000);
			                 
			              
			                    action="performed";
			                    System.out.println(action);
			                    break;
			                }
			            }
			            if(!action.equals("performed") && !rateType[0].equals("Aggregator") && !rateType[0].equals("Public rates"))
			            	rateType[1] = "CWT";
			        }
			            
			            // XPath of Book Continue Button
			            strXPath= xModifyBookHotelRefundID;
			            strXPath= replaceText("rateType",rateType[0],strXPath);
			            strXPath= replaceText("refundID",refundID,strXPath);
			            element =  waitIfElementLocated(strXPath);
			           
				   	    clickelement(element, "ModifyBookHotelRefundID Button");
			            waitFor(5000);
			            screenShotPath = captureScreenShot();
			            System.out.println("Result : Pass");
						  test.log(Status.PASS, "ModifyCheckRefundable"+rateType[0]+"Rates Going to Selecting Rates to modify the booking");
				          
			        } catch(Exception e){
			        	 screenShotPath = captureScreenShot();
						  test.log(Status.FAIL, "ModifyCheckRefundable"+rateType[0]+"but no rates found", MediaEntityBuilder.createScreenCaptureFromPath(screenShotPath).build());
						  assertTrue(screenShotPath.isEmpty());
			        }			            
			       
		   }
		   
		   public void HotelCommunicationModify(String HotelCommunicationModify) throws IOException
			  {
				
				
				waitFor(5000);
				waitIfElementLocated(xHotelCommunication);
			    selectFromDropdownUsingOptionValue(HotelCommunication, HotelCommunicationModify);
			    waitFor(1000);
			  
			  }
		   
		   public void ReasonForNotSendingModify(String ReasonForNotSendingModifyValue) throws IOException
			  {
				
				waitForElement(ReasonForNotSending,5,"ReasonForNotSending");
			    selectFromDropdownUsingOptionValue(ReasonForNotSending, ReasonForNotSendingModifyValue);
			    waitFor(2000);
			  
			  }

			public void ReasonForNotSendingReasonModify(String ReasonForNotSendingModifyReasonValue) throws IOException
			  {
				
				waitForElement(ReasonForNotSendingReason, 20, "ReasonForNotSendingReason");
				settext(ReasonForNotSendingReason, "ReasonForNotSendingReasonValue", ReasonForNotSendingModifyReasonValue);
			    waitFor(2000);
			  
			  }

			public void ModifyBookingButton() throws IOException
			{
			try{
				waitForElement(ModifyBooking,5, "Modify Booking");
				waitFor(2000);
				clickelement(ModifyBooking, "ModifyButton");
				waitFor(2000);
			}
				catch (NullPointerException ex) {
			    	screenShotPath = captureScreenShot();           	
			    	System.out.println("Result : Fail");
			    	test.log(Status.FAIL, "Something goes wrong with ModifyBookingButton() function on ModifyBooking Page");
			    	assertTrue(screenShotPath.isEmpty());
			    }
				
             }

			public void ClickModifyRoomOrRate() throws IOException
			{
			
				waitForElement(ModifyRoomOrRate,5, "ModifyRoomOrRate Link");
				clickelement(ModifyRoomOrRate, "ModifyRoomOrRate Link");	
				waitFor(5000);
             }
			
			public void ClickGetModifyRate() throws IOException
			{
			
				waitForElement(GetModifyRates,5, "GetModifyRates button");
				clickelement(GetModifyRates, "GetModifyRates button");	
				waitFor(20000);
             }
			
			public void ClickAdditionalRate() throws IOException
			{
			
				waitForElement(AdditionalRates,5, "AdditionalRates Link");
				clickelement(AdditionalRates, "AdditionalRates Link");	
				waitFor(4000);
             }
	           
			
			public void CompareOldRoomDesc(String data) throws InterruptedException, Exception
			   {
				   
			       String refundID = "", roomRateDescNew ="", roomRateDescOld, strXPath, RefundText, action="";
			       int eleSize;
			       try{
			    	   
			    	   strXPath=RoomRateDiv;
			           element=driver.findElement(By.xpath(strXPath));
			       
			           String AddtionalID=element.getAttribute("id");
			           AddtionalID = AddtionalID.replace("outerrt", "");
			           
			           strXPath = CompareAdditionalRateButton;
			           strXPath= replaceText("AddtionalID",AddtionalID,strXPath);
			           element=waitIfElementLocated(strXPath);
			           element.click();
			           
			           strXPath = OldRoomRate;
			           element=waitIfElementLocated(strXPath);
			           roomRateDescOld = element.getText();

			           List <WebElement> AdditonalRates1 =  driver.findElements(By.xpath(xAdditionalRates));
			           while(!action.equals("performed"))
			           {
			           for(WebElement s : AdditonalRates1) 
			           {
			        	   boolean i=false;
			        	   refundID = s.getAttribute("id");
			    	       refundID = refundID.replace("RTLST_", "");
			    	       
			    	       strXPath= NewRoomRate;
			    	       strXPath= replaceText("refundID",refundID,strXPath);
			               roomRateDescNew = driver.findElement(By.xpath(strXPath)).getText().substring(3);
			               
			               // XPath of Refund Texts
			               strXPath= CompareRefundText;
			               strXPath= replaceText("refundID",refundID,strXPath);
			               element=waitIfElementLocated(strXPath);
			               RefundText=element.getText();
			               System.out.println("Again Refund Text : "+RefundText);
			               
			               strXPath= RoomITRateCheck;         
			               element = findElement(strXPath);
			               eleSize= s.findElements(By.xpath(strXPath)).size();
			               if(data.equals("CWV") && eleSize != 0)
			               {
			               	if(RefundText.equals("Non-refundable") || RefundText.equals("Deposit required") || RefundText.equals("Prepayment required"))
			                   {
			               		System.out.println("Search for the next Additional Rate");
			                   }
			               	else
			               	{
			               		i = true;
			               	}
			               }
			               else if(data.equals("CWT") && eleSize == 0)
			               {
			               	if(RefundText.equals("Non-refundable") || RefundText.equals("Deposit required") || RefundText.equals("Prepayment required"))
			                   {
			               		System.out.println("Search for the next Additional Rate");
			                   }
			               	else
			               	{
			               		i = true;
			               	}
			               }
			              
			               if(i==true)
			               {            	   
			                   if(!roomRateDescNew.contains(roomRateDescOld))
			                   {
			                	   // XPath of Select Rate
			                	   strXPath= CompareSelectRate;
			                	   strXPath= replaceText("refundID",refundID,strXPath);
			                	   element=waitIfElementLocated(strXPath);
			                       element.click();
			                       waitFor(8000);
			                       
			                      
			                       action="performed";
			                       
			                       break;
			                    }
			               }
			           }
			           if(!action.equals("performed"))
			        	   data = "CWT";
			       }
				           // XPath of Book Continue Button
				           strXPath= CompareBookHotel;
				           strXPath= replaceText("refundID",refundID,strXPath);
				           element=waitIfElementLocated(strXPath);
				           element.click();
				           waitFor(8000);
				           System.out.println("Result : Pass");
				           test.log(Status.PASS, "Compare Old Room Rate " + roomRateDescOld + " with New Rate " + roomRateDescNew);
				           
			               
			       } 
			       catch(Exception e){
			    	   screenShotPath = captureScreenShot();
						  test.log(Status.FAIL, "Issue found while comparing old rates", MediaEntityBuilder.createScreenCaptureFromPath(screenShotPath).build());
				          System.out.println("Result : Fail");
				          assertTrue(screenShotPath.isEmpty());
			   }
			   }
			
			/*public void selectDate(String date) throws IOException 
		    {
		        try
		        {
		            System.out.println("---------------------------------------------");
		            System.out.println("Action : Select Date");
		            //System.out.println("Step   : Select Date on "+orMap.get(parent+"-"+object).get("LogicalName"));
		         
		            int flag=0;    
		            while(flag!=1)
		            {
		                ArrayList<WebElement> diffElements= new ArrayList<WebElement>();
		                diffElements=findDifferentElements();
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
		         
		            System.out.println("Result : Pass");
			        test.log(Status.PASS, "Date selected successfully during Modify Flow");
		           
		        }
		        catch(Exception e){
			    	   screenShotPath = captureScreenShot();
						  test.log(Status.FAIL, "Issue found while selecting date in ModifyFlow ", MediaEntityBuilder.createScreenCaptureFromPath(screenShotPath).build());
				          System.out.println("Result : Fail");
				          assertTrue(screenShotPath.isEmpty());	
		        }
		    }
			
			
			ArrayList<WebElement> findDifferentElements() throws IOException 
			{
				String locator=null;
				ArrayList<WebElement> elements = new ArrayList<WebElement>();
				try
				{	
					//locator=orMap.get(page+"-"+object).get("LocatorValue");
					String []xpaths=xModifyCheckInDate.split(";");
					for(int i=0;i<xpaths.length;i++)
					{
						elements.add(driver.findElement(By.xpath(xpaths[i])));
					}
				}
				catch(Exception e){
			    	   screenShotPath = captureScreenShot();
						  test.log(Status.FAIL, "Issue found while storing elements during selecting date in ModifyFlow ", MediaEntityBuilder.createScreenCaptureFromPath(screenShotPath).build());
				          System.out.println("Result : Fail");
				          assertTrue(screenShotPath.isEmpty());		
			  
			         }
				return elements;
			}*/
			
			
			public void ClickCheckOutDateCalender() throws IOException
			{
			
				waitForElement(CheckOutDateCalender,5, "CheckOutDate Calender");
				waitFor(2000);
				clickelement(CheckOutDateCalender, "CheckOutDate Calender");
				waitFor(4000);
             }
			
	}


