Feature: Payment Mode A test cases

  @TA-117
  Scenario Outline: TA-117 - Booking Flow - US - Apollo - Public rate
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS    | PNR    | TestCaseName                                      | check-In | check-Out | HotelName                                                                                                                                                                                                                                | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Apollo | Q7Z60W | TA-117 - Booking Flow - US - Apollo - Public rate |       90 |        91 | Artotel Budapest, Bem Rakpart 16-19, Budapest, Hungary, 1011;HAMPTON INN AND SUITES MEXICO CITY, CALLE 5 DE FEBRERO NO 24, COLONIA CENTRO, MEXICO CITY, MEXICO, 06060;Hilton Budapest, Hess A Ter 1 3, Budapest, Hungary, H 1014;Public; | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-120
  Scenario Outline: TA-120 - Booking Flow - US - Sabre - Expedia
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS   | PNR    | TestCaseName                                 | check-In | check-Out | HotelName                                                                                                                                                                                                                                                       | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Sabre | DYQISA | TA-120 - Booking Flow - US - Sabre - Expedia |       90 |        91 | Best Western Premier Sofia Airport, 11 Brussels Blvd, Sofia, Bulgaria, 1592;HAMPTON INN AND SUITES MEXICO CITY, CALLE 5 DE FEBRERO NO 24, COLONIA CENTRO, MEXICO CITY, MEXICO, 06060;Hilton Budapest, Hess A Ter 1 3, Budapest, Hungary, H 1014;Aggregator;EAN; | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-132
  Scenario Outline: TA-132 - Booking Flow - US - Sabre - Public rate
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS   | PNR    | TestCaseName                                     | check-In | check-Out | HotelName                                                                                                                                                                                      | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Sabre | DYQISA | TA-132 - Booking Flow - US - Sabre - Public rate |       90 |        91 | Park Hyatt Chicago;HAMPTON INN AND SUITES MEXICO CITY, CALLE 5 DE FEBRERO NO 24, COLONIA CENTRO, MEXICO CITY, MEXICO, 06060;Hilton Budapest, Hess A Ter 1 3, Budapest, Hungary, H 1014;Public; | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-3
  Scenario Outline: TA-3 - Booking Flow - US - Sabre - RoomIt rates
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS   | PNR    | TestCaseName                                    | check-In | check-Out | HotelName                                                                                                                                                                                               | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Sabre | DYQISA | TA-3 - Booking Flow - US - Sabre - RoomIt rates |       90 |        91 | Radisson New Rochelle New York;HAMPTON INN AND SUITES MEXICO CITY, CALLE 5 DE FEBRERO NO 24, COLONIA CENTRO, MEXICO CITY, MEXICO, 06060;Hilton Budapest, Hess A Ter 1 3, Budapest, Hungary, H 1014;CWV; | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-121
  Scenario Outline: TA-121 - Modification Flow - US - Sabre - RoomIt rates
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Modify button on BookingConfirmationPage
    Then user should redirect to ModifyBooking Page
    And user click on ModifyCheckInAndCheckOut link on ModifyBooking Page
    And user change the Check-In and Check-Out Date on ModifyBooking Page
    And user select the rate "<rate>" on ModifyBooking Page
    And select the HotelCommunication "<HotelCommunicationModify>" on ModifyBooking Page
    And user click on ModifyBooking button
    Then user should redirect to BookingConfirmationPage
    Then Booking should be created successfully
    And user verify the error message on BookingConfirmationPage
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS   | PNR    | TestCaseName                                           | check-In | check-Out | HotelName                                                                                                                                                                                                                                        | PaymentMode      | PaymentType                         | HotelCommunication | rate              | HotelCommunicationModify | HotelCommunicationCancel |
      | Sabre | DYQISA | TA-121 - Modification Flow - US - Sabre - RoomIt rates |       90 |        91 | Park Hyatt Chicago;Holiday Inn Express Washington Dc East, 5001 Mercedes Boulevard, Camp Springs, Maryland, United States, 20746;Hampton Inn and Suites Camp Springs, 5000 Mercedes Boulevard, Camp Springs, Maryland, United States, 20746;CWV; | Pay on departure | Pay on departure - Visa ending 0002 | No                 | RoomIt rates;CWV; | No                       | No                       |

  @TA-11
  Scenario Outline: TA-11 - Booking Flow - US - Sabre - On request
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    When select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to onrequestffcPage
    When user click on ContactInfo and NotificationEmail option on onrequestffcPage
    And user click on FulfillNow button on onrequestffcPage
    And user select the RoomDescription "<RoomDescription>" on onrequestffcPage
    And user select the RateDescription "<RateDescription>" on onrequestffcPage
    And click on CommissionableRadioBtn on onrequestffcPage
    And eneter the CommissionAmount "<CommissionAmount>" on onrequestffcPage
    And enter the RatePerDay "<RatePerDay>" on onrequestffcPage
    And user select the MealPlan "<MealPlan>" on onrequestffcPage
    And enter the BreakfastAmount "<BreakfastAmount>" on onrequestffcPage
    And user select the BreakfastAvailability "<BreakfastAvailability>" on onrequestffcPage
    And enter the ConfirmationNum "<ConfirmationNum>" on onrequestffcPage
    And user select the PaymentMode "<PaymentMode>" on onrequestffcPage
    And select the PaymentType "<PaymentType>" on onrequestffcPage
    And user select the BookingSource "<BookingSource>" on onrequestffcPage
    And select the HotelCommunication "<HotelCommunication>" on onrequestffcPage
    And user select the ReasonForOnRequestDdl "<ReasonForOnRequestDdl>" on onrequestffcPage
    And user select the ReasonForOnRequestTxtBox "<ReasonForOnRequestTxtBox>" on onrequestffcPage
    And click on ConfirmBooking Button on onrequestffcPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user enter CancellationRefNum "<CancellationRefNum>" on CancelBooking Page
    And user enter CancellationFees "<CancellationFees>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS   | PNR    | TestCaseName                                   | check-In | check-Out | HotelName                                                                                                                                                                                                      | RoomDescription | RateDescription          | CommissionAmount | RatePerDay | MealPlan         | BreakfastAmount | BreakfastAvailability | ConfirmationNum | PaymentMode      | PaymentType                         | BookingSource | HotelCommunication | ReasonForOnRequestDdl | ReasonForOnRequestTxtBox | HotelCommunicationCancel | CancellationRefNum | CancellationFees |
      | Sabre | DYQISA | TA-11 - Booking Flow - US - Sabre - On request |       90 |        91 | Park Hyatt Chicago;METROPOLITAN HOTEL VANCOUVER, 645 HOWE STREET, VANCOUVER, BRITISH COLUMBIA, CANADA, V6C 2Y9;EXECUTIVE LE SOLEIL, 567 HORNBY STREET, VANCOUVER, BRITISH COLUMBIA, CANADA, V6C 2E8;OnRequest; | Single Room     | RAC for all Public rates |               20 |        100 | Buffet Breakfast |              10 | Exclusive             |            1234 | Pay on departure | Pay on departure - Visa ending 0002 | On-Request    | No                 | Other                 | Test Booking             | No                       |               1234 |                0 |

  @TA-119
  Scenario Outline: TA-119 - Booking Flow - US - Sabre - Booking.com
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS   | PNR    | TestCaseName                                     | check-In | check-Out | HotelName                                                                             | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Sabre | DYQISA | TA-119 - Booking Flow - US - Sabre - Booking.com |       90 |        91 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-4
  Scenario Outline: TA-4 - Modification flow - US - Sabre - Booking.com
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Modify button on BookingConfirmationPage
    Then user should redirect to ModifyBooking Page
    And user click on ModifyCheckInAndCheckOut link on ModifyBooking Page
    And user change the Check-In and Check-Out Date on ModifyBooking Page
    And user select the rate "<rate>" on ModifyBooking Page
    And select the HotelCommunication "<HotelCommunicationModify>" on ModifyBooking Page
    And user click on ModifyBooking button
    Then user should redirect to BookingConfirmationPage
    Then Booking should be created successfully
    And user verify the error message on BookingConfirmationPage
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS   | PNR    | TestCaseName                                        | check-In | check-Out | HotelName                                                                             | PaymentMode      | PaymentType                         | HotelCommunication | rate          | HotelCommunicationModify | HotelCommunicationCancel |
      | Sabre | DYQISA | TA-4 - Modification flow - US - Sabre - Booking.com |       90 |        91 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | Pay on departure | Pay on departure - Visa ending 0002 | No                 | Aggregator;BC | No                       | No                       |

  @TA-5
  Scenario Outline: TA-5 - Booking Flow - US -  Apollo - RoomIt rates
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS    | PNR    | TestCaseName                                      | check-In | check-Out | HotelName                                                                                                                                                                                                                                          | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Apollo | Q7Z60W | TA-5 - Booking Flow - US -  Apollo - RoomIt rates |       90 |        91 | SCANDIC SIMONKENTTA, SIMONKATU 9, HELSINKI, FINLAND, 00100;THE PULI HOTEL AND SPA, 1 CHANGDE RD JINGAN DISTRICT, SHANGHAI, CHINA, 200040;Intercontinental Hotel Citystars Cairo, Omar Ibn El Khattab Street, Po Box 1026, Cairo, Egypt, 11737;CWV; | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-153
  Scenario Outline: TA-153 - Booking Flow - US - Apollo - Expedia
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS    | PNR    | TestCaseName                                  | check-In | check-Out | HotelName                                                                                                                                                                                                                                                                                        | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Apollo | Q7Z60W | TA-153 - Booking Flow - US - Apollo - Expedia |       91 |        92 | Jurys Inn Glasgow, 80 Jamaica Street, Glasgow, Strathclyde, United Kingdom, G1 4qg;RADISSON SAO PAULO VILA OLIMPIA, R FIDENCIO RAMOS 420, SAO PAULO, BRAZIL, 04551-010;INTERCONTINENTAL MELBOURNE, 495 COLLINS STREET, MELBOURNE VI AU 3000, MELBOURNE, VICTORIA, AUSTRALIA, 3000;Aggregator;EAN | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-19
  Scenario Outline: TA-19 - Modification Flow - US - Apollo - Booking.com
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Modify button on BookingConfirmationPage
    Then user should redirect to ModifyBooking Page
    And user click on ModifyCheckInAndCheckOut link on ModifyBooking Page
    And user change the Check-In and Check-Out Date on ModifyBooking Page
    And user select the rate "<rate>" on ModifyBooking Page
    And select the HotelCommunication "<HotelCommunicationModify>" on ModifyBooking Page
    And user click on ModifyBooking button
    Then user should redirect to BookingConfirmationPage
    Then Booking should be created successfully
    And user verify the error message on BookingConfirmationPage
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS    | PNR    | TestCaseName                                          | check-In | check-Out | HotelName                                                                             | PaymentMode      | PaymentType                         | HotelCommunication | rate          | HotelCommunicationModify | HotelCommunicationCancel |
      | Apollo | Q7Z60W | TA-19 - Modification Flow - US - Apollo - Booking.com |       90 |        91 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | Pay on departure | Pay on departure - Visa ending 0002 | No                 | Aggregator;BC | No                       | No                       |

  @TA-157
  Scenario Outline: TA-157 - Booking Flow - UK - Galileo - RoomIt Rates
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                        | check-In | check-Out | HotelName                                                                                                                                                                                                               | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Galileo | BP85BS | TA-157 - Booking Flow - UK - Galileo - RoomIt Rates |       90 |        91 | RADISSON BLU DOHA, SALWA ROAD INTERSECTION OF C R, DOHA, DOHA, QATAR;Park Inn by Radisson Kyiv Troyitska, 55 Velyka Street, Kiev, Ukraine, 03150;Radisson Blu Kiev, Yaroslaviv Val Street 22, Kiev, Ukraine, 01034;CWV; | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-158
  Scenario Outline: TA-158 - Booking Flow - UK - Galileo - Public Rates
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                        | check-In | check-Out | HotelName                                                                                                                                                                                                                                | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Galileo | BP85BS | TA-158 - Booking Flow - UK - Galileo - Public Rates |       90 |        91 | HAMPTON INN AND SUITES MEXICO CITY, CALLE 5 DE FEBRERO NO 24, COLONIA CENTRO, MEXICO CITY, MEXICO, 06060;Artotel Budapest, Bem Rakpart 16-19, Budapest, Hungary, 1011;Hilton Budapest, Hess A Ter 1 3, Budapest, Hungary, H 1014;Public; | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-154
  Scenario Outline: TA-154 - Modification flow - US - Apollo - RoomIt rates
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Modify button on BookingConfirmationPage
    Then user should redirect to ModifyBooking Page
    And user click on ModifyCheckInAndCheckOut link on ModifyBooking Page
    And user change the Check-In and Check-Out Date on ModifyBooking Page
    And user select the rate "<rate>" on ModifyBooking Page
    And select the HotelCommunication "<HotelCommunicationModify>" on ModifyBooking Page
    And user click on ModifyBooking button
    Then user should redirect to BookingConfirmationPage
    Then Booking should be created successfully
    And user verify the error message on BookingConfirmationPage
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS    | PNR    | TestCaseName                                            | check-In | check-Out | HotelName                                                                                                                                                                                                               | PaymentMode      | PaymentType                         | HotelCommunication | rate              | HotelCommunicationModify | HotelCommunicationCancel |
      | Apollo | Q7Z60W | TA-154 - Modification flow - US - Apollo - RoomIt rates |       90 |        91 | Park Inn by Radisson Kyiv Troyitska, 55 Velyka Street, Kiev, Ukraine, 03150;RADISSON BLU DOHA, SALWA ROAD INTERSECTION OF C R, DOHA, DOHA, QATAR;Radisson Blu Kiev, Yaroslaviv Val Street 22, Kiev, Ukraine, 01034;CWT; | Pay on departure | Pay on departure - Visa ending 0002 | No                 | RoomIt rates;CWT; | No                       | No                       |

  @TA-122
  Scenario Outline: TA-122 - Booking Flow - US - Apollo - On request
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    When select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to onrequestffcPage
    When user click on ContactInfo and NotificationEmail option on onrequestffcPage
    And user click on FulfillNow button on onrequestffcPage
    And user select the RoomDescription "<RoomDescription>" on onrequestffcPage
    And user select the RateDescription "<RateDescription>" on onrequestffcPage
    And click on CommissionableRadioBtn on onrequestffcPage
    And eneter the CommissionAmount "<CommissionAmount>" on onrequestffcPage
    And enter the RatePerDay "<RatePerDay>" on onrequestffcPage
    And user select the MealPlan "<MealPlan>" on onrequestffcPage
    And enter the BreakfastAmount "<BreakfastAmount>" on onrequestffcPage
    And user select the BreakfastAvailability "<BreakfastAvailability>" on onrequestffcPage
    And enter the ConfirmationNum "<ConfirmationNum>" on onrequestffcPage
    And user select the PaymentMode "<PaymentMode>" on onrequestffcPage
    And select the PaymentType "<PaymentType>" on onrequestffcPage
    And user select the BookingSource "<BookingSource>" on onrequestffcPage
    And select the HotelCommunication "<HotelCommunication>" on onrequestffcPage
    And user select the ReasonForOnRequestDdl "<ReasonForOnRequestDdl>" on onrequestffcPage
    And user select the ReasonForOnRequestTxtBox "<ReasonForOnRequestTxtBox>" on onrequestffcPage
    And click on ConfirmBooking Button on onrequestffcPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user enter CancellationRefNum "<CancellationRefNum>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS    | PNR    | TestCaseName                                     | check-In | check-Out | HotelName                                                                                                                                                                                                                                   | RoomDescription | RateDescription          | CommissionAmount | RatePerDay | MealPlan         | BreakfastAmount | BreakfastAvailability | ConfirmationNum | BookingSource | ReasonForOnRequestDdl | ReasonForOnRequestTxtBox | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel | CancellationRefNum |
      | Apollo | Q7Z60W | TA-122 - Booking Flow - US - Apollo - On request |       90 |        91 | Artotel Budapest, Bem Rakpart 16-19, Budapest, Hungary, 1011;HAMPTON INN AND SUITES MEXICO CITY, CALLE 5 DE FEBRERO NO 24, COLONIA CENTRO, MEXICO CITY, MEXICO, 06060;Hilton Budapest, Hess A Ter 1 3, Budapest, Hungary, H 1014;OnRequest; | Single Room     | RAC for all Public rates |               20 |        100 | Buffet Breakfast |             100 | Exclusive             |            1234 | On-Request    | Other                 | Test Booking             | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |               1234 |

  @TA-191
  Scenario Outline: TA-191 - Booking Flow - DE - Amadeus - On Request
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    When select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to onrequestffcPage
    #When user click on ContactInfo and NotificationEmail option on onrequestffcPage
    When user click on FulfillNow button on onrequestffcPage
    And user select the RoomDescription "<RoomDescription>" on onrequestffcPage
    And user select the RateDescription "<RateDescription>" on onrequestffcPage
    And click on CommissionableRadioBtn on onrequestffcPage
    And eneter the CommissionAmount "<CommissionAmount>" on onrequestffcPage
    And enter the RatePerDay "<RatePerDay>" on onrequestffcPage
    And user select the MealPlan "<MealPlan>" on onrequestffcPage
    And enter the BreakfastAmount "<BreakfastAmount>" on onrequestffcPage
    And user select the BreakfastAvailability "<BreakfastAvailability>" on onrequestffcPage
    And enter the ConfirmationNum "<ConfirmationNum>" on onrequestffcPage
    And user select the PaymentMode "<PaymentMode>" on onrequestffcPage
    And select the PaymentType "<PaymentType>" on onrequestffcPage
    And user select the BookingSource "<BookingSource>" on onrequestffcPage
    And select the HotelCommunication "<HotelCommunication>" on onrequestffcPage
    And select the ReasonForNotSending "<ReasonForNotSendingValueOnRequestPage>" on onrequestffcPage
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingReasonValueOnRequestPage>" on onrequestffcPage
    And user select the ReasonForOnRequestDdl "<ReasonForOnRequestDdl>" on onrequestffcPage
    And user select the ReasonForOnRequestTxtBox "<ReasonForOnRequestTxtBox>" on onrequestffcPage
    And click on ConfirmBooking Button on onrequestffcPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And select the ReasonForNotSending "<ReasonForNotSendingCancelValue>" on CancelBooking Page
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingCancelReasonValue>" on CancelBooking Page
    And user enter CancellationRefNum "<CancellationRefNum>" on CancelBooking Page
    And user enter CancellationFees "<CancellationFees>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                      | check-In | check-Out | HotelName                                                                                                                                                                                                              | RoomDescription | RateDescription          | CommissionAmount | RatePerDay | MealPlan         | BreakfastAmount | BreakfastAvailability | ConfirmationNum | PaymentMode      | PaymentType                         | BookingSource | HotelCommunication | ReasonForNotSendingValueOnRequestPage | ReasonForNotSendingReasonValueOnRequestPage | ReasonForOnRequestDdl | ReasonForOnRequestTxtBox | HotelCommunicationCancel | ReasonForNotSendingCancelValue | ReasonForNotSendingCancelReasonValue | CancellationRefNum | CancellationFees |
      | Amadeus | PESXIA | TA-191 - Booking Flow - DE - Amadeus - On Request |       90 |        91 | HYATT REGENCY TOKYO, 2-7-2 NISHI-SHINJUKU, TOKYO, JAPAN, 160-0023;WALDORF ASTORIA BEIJING, 5 15 JINYU HUTONG, BEIJING, CHINA, 100006;GRAND HYATT BEIJING, NO 1 EAST CHANG AN AVENUE, BEIJING, CHINA, 100738;OnRequest; | Single Room     | RAC for all Public rates |               20 |        100 | Buffet Breakfast |              10 | Exclusive             |            1234 | Pay on departure | Pay on departure - Visa ending 0002 | On-Request    | No                 | Other                                 | Test Booking                                | Other                 | Test Booking             | No                       | Other                          | Test Booking                         |               1234 |                0 |

  @TA-152
  Scenario Outline: TA-152 - Booking Flow - US -  Apollo - Booking.com
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS    | PNR    | TestCaseName                                       | check-In | check-Out | HotelName                                                                             | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Apollo | Q7Z60W | TA-152 - Booking Flow - US -  Apollo - Booking.com |       90 |        91 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-161
  Scenario Outline: TA-161 - Booking Flow - UK - Galileo - On request
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    When select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to onrequestffcPage
    When user click on ContactInfo and NotificationEmail option on onrequestffcPage
    And user click on FulfillNow button on onrequestffcPage
    And user select the RoomDescription "<RoomDescription>" on onrequestffcPage
    And user select the RateDescription "<RateDescription>" on onrequestffcPage
    And click on CommissionableRadioBtn on onrequestffcPage
    And eneter the CommissionAmount "<CommissionAmount>" on onrequestffcPage
    And enter the RatePerDay "<RatePerDay>" on onrequestffcPage
    And user select the MealPlan "<MealPlan>" on onrequestffcPage
    And enter the BreakfastAmount "<BreakfastAmount>" on onrequestffcPage
    And user select the BreakfastAvailability "<BreakfastAvailability>" on onrequestffcPage
    And enter the ConfirmationNum "<ConfirmationNum>" on onrequestffcPage
    And user select the PaymentMode "<PaymentMode>" on onrequestffcPage
    And select the PaymentType "<PaymentType>" on onrequestffcPage
    And user select the BookingSource "<BookingSource>" on onrequestffcPage
    And select the HotelCommunication "<HotelCommunication>" on onrequestffcPage
    And user select the ReasonForOnRequestDdl "<ReasonForOnRequestDdl>" on onrequestffcPage
    And user select the ReasonForOnRequestTxtBox "<ReasonForOnRequestTxtBox>" on onrequestffcPage
    And click on ConfirmBooking Button on onrequestffcPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user enter CancellationRefNum "<CancellationRefNum>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                      | check-In | check-Out | HotelName                                                                                                                                                                                                                                   | RoomDescription | RateDescription          | CommissionAmount | RatePerDay | MealPlan         | BreakfastAmount | BreakfastAvailability | ConfirmationNum | BookingSource | ReasonForOnRequestDdl | ReasonForOnRequestTxtBox | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationModify | HotelCommunicationCancel | CancellationRefNum |
      | Galileo | BP85BS | TA-161 - Booking Flow - UK - Galileo - On request |       90 |        91 | Artotel Budapest, Bem Rakpart 16-19, Budapest, Hungary, 1011;HAMPTON INN AND SUITES MEXICO CITY, CALLE 5 DE FEBRERO NO 24, COLONIA CENTRO, MEXICO CITY, MEXICO, 06060;Hilton Budapest, Hess A Ter 1 3, Budapest, Hungary, H 1014;OnRequest; | Single Room     | RAC for all Public rates |               20 |        100 | Buffet Breakfast |             100 | Exclusive             |            1234 | On-Request    | Other                 | Test Booking             | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       | No                       |               1234 |

  @TA-198
  Scenario Outline: TA-198 - Booking Flow - FR - Amadeus - On Request
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    When select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to onrequestffcPage
    When user click on ContactInfo and NotificationEmail option on onrequestffcPage
    And user click on FulfillNow button on onrequestffcPage
    And user select the RoomDescription "<RoomDescription>" on onrequestffcPage
    And user select the RateDescription "<RateDescription>" on onrequestffcPage
    And click on CommissionableRadioBtn on onrequestffcPage
    And eneter the CommissionAmount "<CommissionAmount>" on onrequestffcPage
    And enter the RatePerDay "<RatePerDay>" on onrequestffcPage
    And user select the MealPlan "<MealPlan>" on onrequestffcPage
    And enter the BreakfastAmount "<BreakfastAmount>" on onrequestffcPage
    And user select the BreakfastAvailability "<BreakfastAvailability>" on onrequestffcPage
    And enter the ConfirmationNum "<ConfirmationNum>" on onrequestffcPage
    And user select the PaymentMode "<PaymentMode>" on onrequestffcPage
    And select the PaymentType "<PaymentType>" on onrequestffcPage
    And user select the BookingSource "<BookingSource>" on onrequestffcPage
    And select the HotelCommunication "<HotelCommunication>" on onrequestffcPage
    And user select the ReasonForOnRequestDdl "<ReasonForOnRequestDdl>" on onrequestffcPage
    And user select the ReasonForOnRequestTxtBox "<ReasonForOnRequestTxtBox>" on onrequestffcPage
    And click on ConfirmBooking Button on onrequestffcPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user enter CancellationRefNum "<CancellationRefNum>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                      | check-In | check-Out | HotelName                                                                                                                                                                                                                                   | RoomDescription | RateDescription          | CommissionAmount | RatePerDay | MealPlan         | BreakfastAmount | BreakfastAvailability | ConfirmationNum | BookingSource | ReasonForOnRequestDdl | ReasonForOnRequestTxtBox | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationModify | HotelCommunicationCancel | CancellationRefNum |
      | Amadeus | TY2M7M | TA-198 - Booking Flow - FR - Amadeus - On Request |       90 |        91 | Artotel Budapest, Bem Rakpart 16-19, Budapest, Hungary, 1011;HAMPTON INN AND SUITES MEXICO CITY, CALLE 5 DE FEBRERO NO 24, COLONIA CENTRO, MEXICO CITY, MEXICO, 06060;Hilton Budapest, Hess A Ter 1 3, Budapest, Hungary, H 1014;OnRequest; | Single Room     | RAC for all Public rates |               20 |        100 | Buffet Breakfast |             100 | Exclusive             |            1234 | On-Request    | Other                 | Test Booking             | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       | No                       |               1234 |

  @TA-168
  Scenario Outline: TA- 168 - Booking Flow - IT - Amadeus - On Request
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    When select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to onrequestffcPage
    #When user click on ContactInfo and NotificationEmail option on onrequestffcPage
    When user click on FulfillNow button on onrequestffcPage
    And user select the RoomDescription "<RoomDescription>" on onrequestffcPage
    And user select the RateDescription "<RateDescription>" on onrequestffcPage
    And click on CommissionableRadioBtn on onrequestffcPage
    And eneter the CommissionAmount "<CommissionAmount>" on onrequestffcPage
    And enter the RatePerDay "<RatePerDay>" on onrequestffcPage
    And user select the MealPlan "<MealPlan>" on onrequestffcPage
    And enter the BreakfastAmount "<BreakfastAmount>" on onrequestffcPage
    And user select the BreakfastAvailability "<BreakfastAvailability>" on onrequestffcPage
    And enter the ConfirmationNum "<ConfirmationNum>" on onrequestffcPage
    And user select the PaymentMode "<PaymentMode>" on onrequestffcPage
    And select the PaymentType "<PaymentType>" on onrequestffcPage
    And user select the BookingSource "<BookingSource>" on onrequestffcPage
    And select the HotelCommunication "<HotelCommunication>" on onrequestffcPage
    And user select the ReasonForOnRequestDdl "<ReasonForOnRequestDdl>" on onrequestffcPage
    And user select the ReasonForOnRequestTxtBox "<ReasonForOnRequestTxtBox>" on onrequestffcPage
    And click on ConfirmBooking Button on onrequestffcPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user enter CancellationRefNum "<CancellationRefNum>" on CancelBooking Page
    And user enter CancellationFees "<CancellationFees>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                       | check-In | check-Out | HotelName                                                                                                                                                                                                                       | RoomDescription | RateDescription          | CommissionAmount | RatePerDay | MealPlan         | BreakfastAmount | BreakfastAvailability | ConfirmationNum | PaymentMode      | PaymentType                         | BookingSource | HotelCommunication | ReasonForOnRequestDdl | ReasonForOnRequestTxtBox | HotelCommunicationCancel | CancellationRefNum | CancellationFees |
      | Amadeus | MVH6ZU | TA- 168 - Booking Flow - IT - Amadeus - On Request |       90 |        91 | HILTON MIAMI DOWNTOWN, 1601 BISCAYNE BLVD, MIAMI, FLORIDA, UNITED STATES, 33132;CONRAD MIAMI, 1395 BRICKELL AVENUE, MIAMI, FLORIDA, UNITED STATES, 33131;METROPOL MOSCOW, 2 TEATRALNY PROEZD, MOSCOW, RUSSIA, 109012;OnRequest; | Single Room     | RAC for all Public rates |               20 |        100 | Buffet Breakfast |              10 | Exclusive             |            1234 | Pay on departure | Pay on departure - Visa ending 0002 | On-Request    | No                 | Other                 | Test Booking             | No                       |               1234 |                0 |

  @TA-166
  Scenario Outline: TA-166 - Booking Flow - IT - Amadeus - Booking.com
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                       | check-In | check-Out | HotelName                                                                             | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Amadeus | MVH6ZU | TA-166 - Booking Flow - IT - Amadeus - Booking.com |       90 |        91 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-164
  Scenario Outline: TA-164 - Booking Flow - IT - Amadeus - RoomIt rates
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                        | check-In | check-Out | HotelName                                                                                                                                                                                                                                          | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Amadeus | MVH6ZU | TA-164 - Booking Flow - IT - Amadeus - RoomIt rates |       90 |        91 | SCANDIC SIMONKENTTA, SIMONKATU 9, HELSINKI, FINLAND, 00100;THE PULI HOTEL AND SPA, 1 CHANGDE RD JINGAN DISTRICT, SHANGHAI, CHINA, 200040;Intercontinental Hotel Citystars Cairo, Omar Ibn El Khattab Street, Po Box 1026, Cairo, Egypt, 11737;CWV; | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-169
  Scenario Outline: TA-169 - Modification Flow - IT - Amadeus - RoomIt Rates
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Modify button on BookingConfirmationPage
    Then user should redirect to ModifyBooking Page
    And user click on ModifyCheckInAndCheckOut link on ModifyBooking Page
    And user change the "<checkInDate>" from Check-In calender on ModifyBooking Page
    And user click on Check out date calendar on ModifyBooking Page
    And user change the "<checkOutDate>" from Check-Out calender on ModifyBooking Page
    And user click on GetModifyRate button on ModifyBooking Page
    And user select the rate "<rate>" on ModifyBooking Page
    And select the HotelCommunication "<HotelCommunicationModify>" on SelectTravelerPage
    And user click on ModifyBooking button
    Then user should redirect to BookingConfirmationPage
    Then Booking should be created successfully
    And user verify the error message on BookingConfirmationPage
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                             | check-In | check-Out | HotelName                                                                                                                                                                                                                                          | PaymentMode      | PaymentType                         | HotelCommunication | checkInDate  | checkOutDate | rate              | HotelCommunicationModify | HotelCommunicationCancel |
      | Amadeus | MVH6ZU | TA-169 - Modification Flow - IT - Amadeus - RoomIt Rates |       90 |        91 | SCANDIC SIMONKENTTA, SIMONKATU 9, HELSINKI, FINLAND, 00100;THE PULI HOTEL AND SPA, 1 CHANGDE RD JINGAN DISTRICT, SHANGHAI, CHINA, 200040;Intercontinental Hotel Citystars Cairo, Omar Ibn El Khattab Street, Po Box 1026, Cairo, Egypt, 11737;CWV; | Pay on departure | Pay on departure - Visa ending 0002 | No                 | 25;June 2019 | 26;June 2019 | RoomIt rates;CWV; | No                       | No                       |

  @TA-165
  Scenario Outline: TA-165 - Booking Flow - IT - Amadeus - Public Rate
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                       | check-In | check-Out | HotelName                                                                                                                                                                                                                                             | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Amadeus | T6HYGF | TA-165 - Booking Flow - IT - Amadeus - Public Rate |       90 |        91 | HOLIDAY INN AMSTERDAM, DE BOELELAAN 2, AMSTERDAM, NETHERLANDS, 1083 HJ;CONRAD CENTENNIAL SINGAPORE, TWO TEMASEK BOULEVARD, SINGAPORE, SINGAPORE, 038982;MILLENNIUM HILTON BANGKOK, 123 CHAROENNAKORN ROAD, KLONGSAN, BANGKOK, THAILAND, 10600;Public; | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-167
  Scenario Outline: TA-167 - Booking Flow - IT - Amadeus - Expedia
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                   | check-In | check-Out | HotelName                                                                                                                                                                                                                                                    | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Amadeus | T6HYGF | TA-167 - Booking Flow - IT - Amadeus - Expedia |       90 |        91 | HOLIDAY INN AMSTERDAM, DE BOELELAAN 2, AMSTERDAM, NETHERLANDS, 1083 HJ;CONRAD CENTENNIAL SINGAPORE, TWO TEMASEK BOULEVARD, SINGAPORE, SINGAPORE, 038982;MILLENNIUM HILTON BANGKOK, 123 CHAROENNAKORN ROAD, KLONGSAN, BANGKOK, THAILAND, 10600;Aggregator;EAN | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-170
  Scenario Outline: TA-170 - Modification Flow - IT - Amadeus - Booking.com
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Modify button on BookingConfirmationPage
    Then user should redirect to ModifyBooking Page
    And user click on ModifyCheckInAndCheckOut link on ModifyBooking Page
    And user change the Check-In and Check-Out Date on ModifyBooking Page
    And user select the rate "<rate>" on ModifyBooking Page
    And select the HotelCommunication "<HotelCommunicationModify>" on ModifyBooking Page
    And user click on ModifyBooking button
    Then user should redirect to BookingConfirmationPage
    Then Booking should be created successfully
    And user verify the error message on BookingConfirmationPage
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                            | check-In | check-Out | HotelName                                                                             | PaymentMode      | PaymentType                         | HotelCommunication | rate          | HotelCommunicationModify | HotelCommunicationCancel |
      | Amadeus | T6HYGF | TA-170 - Modification Flow - IT - Amadeus - Booking.com |       90 |        91 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | Pay on departure | Pay on departure - Visa ending 0002 | No                 | Aggregator;BC | No                       | No                       |

  @TA-199
  Scenario Outline: TA-199 - Modification Flow - FR - Amadeus - RoomIt rates
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Modify button on BookingConfirmationPage
    Then user should redirect to ModifyBooking Page
    And user click on ModifyCheckInAndCheckOut link on ModifyBooking Page
    And user change the Check-In and Check-Out Date on ModifyBooking Page
    And user select the rate "<rate>" on ModifyBooking Page
    And select the HotelCommunication "<HotelCommunicationModify>" on ModifyBooking Page
    And user click on ModifyBooking button
    Then user should redirect to BookingConfirmationPage
    Then Booking should be created successfully
    And user verify the error message on BookingConfirmationPage
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                             | check-In | check-Out | HotelName                                                                                                                                                                                                                  | PaymentMode      | PaymentType                         | HotelCommunication | rate              | HotelCommunicationModify | HotelCommunicationCancel |
      | Amadeus | TY2M7M | TA-199 - Modification Flow - FR - Amadeus - RoomIt rates |       90 |        91 | BRUNELLESCHI HOTEL MILANO, VIA FLAVIO BARACCHINI 12, MILAN, ITALY, I20123;NH FIRENZE, PIAZZA VITTORIO VENETO 4 A, FLORENCE, ITALY, 50123;Crowne Plaza Galleria, Ortigas Avenue Corner, Quezon City, Philippines, 1100;CWV; | Pay on departure | Pay on departure - Visa ending 0002 | No                 | RoomIt rates;CWV; | No                       | No                       |

  @TA-171
  Scenario Outline: TA-171 - Booking Flow - ES - Amadeus - RoomIt rates
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                        | check-In | check-Out | HotelName                                                                                                                                                                                                                                          | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Amadeus | LOIXWT | TA-171 - Booking Flow - ES - Amadeus - RoomIt rates |       90 |        91 | SCANDIC SIMONKENTTA, SIMONKATU 9, HELSINKI, FINLAND, 00100;THE PULI HOTEL AND SPA, 1 CHANGDE RD JINGAN DISTRICT, SHANGHAI, CHINA, 200040;Intercontinental Hotel Citystars Cairo, Omar Ibn El Khattab Street, Po Box 1026, Cairo, Egypt, 11737;CWV; | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-172
  Scenario Outline: TA-172 - Booking Flow - ES - Amadeus - Public Rates
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                        | check-In | check-Out | HotelName                                                                                                                                                                                                           | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Amadeus | LOIXWT | TA-172 - Booking Flow - ES - Amadeus - Public Rates |       90 |        91 | HYATT REGENCY TOKYO, 2-7-2 NISHI-SHINJUKU, TOKYO, JAPAN, 160-0023;WALDORF ASTORIA BEIJING, 5 15 JINYU HUTONG, BEIJING, CHINA, 100006;GRAND HYATT BEIJING, NO 1 EAST CHANG AN AVENUE, BEIJING, CHINA, 100738;Public; | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-159
  Scenario Outline: TA-159 - Booking Flow - UK - Galileo - Booking.com
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                       | check-In | check-Out | HotelName                                                                             | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Galileo | BP85BS | TA-159 - Booking Flow - UK - Galileo - Booking.com |       90 |        91 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-160
  Scenario Outline: TA-160 - Booking Flow - UK - Galileo - Expedia
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                   | check-In | check-Out | HotelName                                                                                                                                                                                                                                                    | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Galileo | BP85BS | TA-160 - Booking Flow - UK - Galileo - Expedia |       90 |        91 | CONRAD CENTENNIAL SINGAPORE, TWO TEMASEK BOULEVARD, SINGAPORE, SINGAPORE, 038982;HOLIDAY INN AMSTERDAM, DE BOELELAAN 2, AMSTERDAM, NETHERLANDS, 1083 HJ;MILLENNIUM HILTON BANGKOK, 123 CHAROENNAKORN ROAD, KLONGSAN, BANGKOK, THAILAND, 10600;Aggregator;EAN | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-162
  Scenario Outline: TA-162 - Modification flow - UK - Galileo - RoomIt rates
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Modify button on BookingConfirmationPage
    Then user should redirect to ModifyBooking Page
    And user click on ModifyCheckInAndCheckOut link on ModifyBooking Page
    And user change the Check-In and Check-Out Date on ModifyBooking Page
    And user select the rate "<rate>" on ModifyBooking Page
    And select the HotelCommunication "<HotelCommunicationModify>" on SelectTravelerPage
    And user click on ModifyBooking button
    Then user should redirect to BookingConfirmationPage
    Then Booking should be created successfully
    And user verify the error message on BookingConfirmationPage
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                             | check-In | check-Out | HotelName                                                                                                                                                                                                               | PaymentMode      | PaymentType                         | HotelCommunication | rate              | HotelCommunicationModify | HotelCommunicationCancel |
      | Galileo | BP85BS | TA-162 - Modification flow - UK - Galileo - RoomIt rates |       90 |        91 | Park Inn by Radisson Kyiv Troyitska, 55 Velyka Street, Kiev, Ukraine, 03150;RADISSON BLU DOHA, SALWA ROAD INTERSECTION OF C R, DOHA, DOHA, QATAR;Radisson Blu Kiev, Yaroslaviv Val Street 22, Kiev, Ukraine, 01034;CWV; | Pay on departure | Pay on departure - Visa ending 0002 | No                 | RoomIt rates;CWT; | No                       | No                       |

  @TA-163
  Scenario Outline: TA-163 - Modification flow - UK - Galileo - Booking.com
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Modify button on BookingConfirmationPage
    Then user should redirect to ModifyBooking Page
    And user click on ModifyCheckInAndCheckOut link on ModifyBooking Page
    And user change the Check-In and Check-Out Date on ModifyBooking Page
    And user select the rate "<rate>" on ModifyBooking Page
    And select the HotelCommunication "<HotelCommunicationModify>" on SelectTravelerPage
    And user click on ModifyBooking button
    Then user should redirect to BookingConfirmationPage
    Then Booking should be created successfully
    And user verify the error message on BookingConfirmationPage
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                            | check-In | check-Out | HotelName                                                                             | PaymentMode      | PaymentType                         | HotelCommunication | rate          | HotelCommunicationModify | HotelCommunicationCancel |
      | Galileo | BP85BS | TA-163 - Modification flow - UK - Galileo - Booking.com |       95 |        96 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | Pay on departure | Pay on departure - Visa ending 0002 | No                 | Aggregator;BC | No                       | No                       |

  @TA-258
  Scenario Outline: TA-258 - Booking Flow - AU - Sabre - RoomIt Rates
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select MissedSavingCode "<MissedSavingsCode>"
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS   | PNR    | TestCaseName                                      | check-In | check-Out | HotelName                                                                                                                                                                                                               | MissedSavingsCode | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Sabre | XIKWAS | TA-258 - Booking Flow - AU - Sabre - RoomIt Rates |       90 |        91 | RADISSON BLU DOHA, SALWA ROAD INTERSECTION OF C R, DOHA, DOHA, QATAR;Park Inn by Radisson Kyiv Troyitska, 55 Velyka Street, Kiev, Ukraine, 03150;Radisson Blu Kiev, Yaroslaviv Val Street 22, Kiev, Ukraine, 01034;CWV; | I - Rate Sold Out | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-259
  Scenario Outline: TA-259 - Booking Flow - AU - Sabre - Public Rates
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select MissedSavingCode "<MissedSavingsCode>"
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS   | PNR    | TestCaseName                                      | check-In | check-Out | HotelName                                                                                                                                                                                                                                | MissedSavingsCode | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Sabre | XIKWAS | TA-259 - Booking Flow - AU - Sabre - Public Rates |       90 |        91 | Artotel Budapest, Bem Rakpart 16-19, Budapest, Hungary, 1011;HAMPTON INN AND SUITES MEXICO CITY, CALLE 5 DE FEBRERO NO 24, COLONIA CENTRO, MEXICO CITY, MEXICO, 06060;Hilton Budapest, Hess A Ter 1 3, Budapest, Hungary, H 1014;Public; | I - Rate Sold Out | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-261
  Scenario Outline: TA-261 - Booking Flow - AU - Sabre - Expedia
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select MissedSavingCode "<MissedSavingsCode>"
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS   | PNR    | TestCaseName                                 | check-In | check-Out | HotelName                                                                                                                                                                                                                                                    | MissedSavingsCode | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Sabre | XIKWAS | TA-261 - Booking Flow - AU - Sabre - Expedia |       90 |        91 | CONRAD CENTENNIAL SINGAPORE, TWO TEMASEK BOULEVARD, SINGAPORE, SINGAPORE, 038982;HOLIDAY INN AMSTERDAM, DE BOELELAAN 2, AMSTERDAM, NETHERLANDS, 1083 HJ;MILLENNIUM HILTON BANGKOK, 123 CHAROENNAKORN ROAD, KLONGSAN, BANGKOK, THAILAND, 10600;Aggregator;EAN | I - Rate Sold Out | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-262
  Scenario Outline: TA-262 - Booking Flow - AU - Sabre - On Request
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    When select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to onrequestffcPage
    #When user click on ContactInfo and NotificationEmail option on onrequestffcPage
    When user click on FulfillNow button on onrequestffcPage
    And user select the RoomDescription "<RoomDescription>" on onrequestffcPage
    And user select the RateDescription "<RateDescription>" on onrequestffcPage
    And click on CommissionableRadioBtn on onrequestffcPage
    And eneter the CommissionAmount "<CommissionAmount>" on onrequestffcPage
    And enter the RatePerDay "<RatePerDay>" on onrequestffcPage
    And user select the MealPlan "<MealPlan>" on onrequestffcPage
    And enter the BreakfastAmount "<BreakfastAmount>" on onrequestffcPage
    And user select the BreakfastAvailability "<BreakfastAvailability>" on onrequestffcPage
    And enter the ConfirmationNum "<ConfirmationNum>" on onrequestffcPage
    And user enter the HighRoomRate as "<HighRoomRate>" on onrequestffcPage
    And user enter the LowRoomRate as "<LowRoomRate>" on onrequestffcPage
    And user select MissedSavingCode "<MissedSavingsCode>"
    And user select the PaymentMode "<PaymentMode>" on onrequestffcPage
    And select the PaymentType "<PaymentType>" on onrequestffcPage
    And user select the BookingSource "<BookingSource>" on onrequestffcPage
    And select the HotelCommunication "<HotelCommunication>" on onrequestffcPage
    And user select the ReasonForOnRequestDdl "<ReasonForOnRequestDdl>" on onrequestffcPage
    And user select the ReasonForOnRequestTxtBox "<ReasonForOnRequestTxtBox>" on onrequestffcPage
    And click on ConfirmBooking Button on onrequestffcPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user enter CancellationRefNum "<CancellationRefNum>" on CancelBooking Page
    And user enter CancellationFees "<CancellationFees>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS   | PNR    | TestCaseName                                    | check-In | check-Out | HotelName                                                                                                                                                                                                              | RoomDescription | RateDescription          | CommissionAmount | RatePerDay | MealPlan         | BreakfastAmount | BreakfastAvailability | ConfirmationNum | HighRoomRate | LowRoomRate | MissedSavingsCode | PaymentMode      | PaymentType                         | BookingSource | HotelCommunication | ReasonForOnRequestDdl | ReasonForOnRequestTxtBox | HotelCommunicationCancel | CancellationRefNum | CancellationFees |
      | Sabre | XIKWAS | TA-262 - Booking Flow - AU - Sabre - On Request |       90 |        91 | HYATT REGENCY TOKYO, 2-7-2 NISHI-SHINJUKU, TOKYO, JAPAN, 160-0023;WALDORF ASTORIA BEIJING, 5 15 JINYU HUTONG, BEIJING, CHINA, 100006;GRAND HYATT BEIJING, NO 1 EAST CHANG AN AVENUE, BEIJING, CHINA, 100738;OnRequest; | Single Room     | RAC for all Public rates |               20 |        100 | Buffet Breakfast |              10 | Exclusive             |            1234 |          200 |         100 | I - Rate Sold Out | Pay on departure | Pay on departure - Visa ending 0002 | On-Request    | No                 | Other                 | Test Booking             | No                       |               1234 |                0 |

  @TA-260
  Scenario Outline: TA-260 - Booking Flow - AU - Sabre - Booking.com
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select MissedSavingCode "<MissedSavingsCode>"
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS   | PNR    | TestCaseName                                     | check-In | check-Out | HotelName                                                                             | MissedSavingsCode | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Sabre | XIKWAS | TA-260 - Booking Flow - AU - Sabre - Booking.com |       90 |        91 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | I - Rate Sold Out | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-264
  Scenario Outline: TA-264 - Modification Flow - AU - Sabre - Booking.com
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select MissedSavingCode "<MissedSavingsCode>"
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Modify button on BookingConfirmationPage
    Then user should redirect to ModifyBooking Page
    And user click on ModifyCheckInAndCheckOut link on ModifyBooking Page
    And user change the Check-In and Check-Out Date on ModifyBooking Page
    And user select the rate "<rate>" on ModifyBooking Page
    And user select MissedSavingCode "<MissedSavingsCodeModify>" on ModifyBooking Page
    And select the HotelCommunication "<HotelCommunicationModify>" on SelectTravelerPage
    And user click on ModifyBooking button
    Then user should redirect to BookingConfirmationPage
    Then Booking should be created successfully
    And user verify the error message on BookingConfirmationPage
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS   | PNR    | TestCaseName                                          | check-In | check-Out | HotelName                                                                             | MissedSavingsCode | PaymentMode      | PaymentType                         | HotelCommunication | rate          | MissedSavingsCodeModify              | HotelCommunicationModify | HotelCommunicationCancel |
      | Sabre | XIKWAS | TA-264 - Modification Flow - AU - Sabre - Booking.com |       90 |        91 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | I - Rate Sold Out | Pay on departure | Pay on departure - Visa ending 0002 | No                 | Aggregator;BC | T - Booked through Temporary Housing | No                       | No                       |

  @TA-263
  Scenario Outline: TA-263 - Modification Flow - AU - Sabre - RoomIt rates
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select MissedSavingCode "<MissedSavingsCode>"
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Modify button on BookingConfirmationPage
    Then user should redirect to ModifyBooking Page
    And user click on ModifyCheckInAndCheckOut link on ModifyBooking Page
    And user change the Check-In and Check-Out Date on ModifyBooking Page
    And user select the rate "<rate>" on ModifyBooking Page
    And user select MissedSavingCode "<MissedSavingsCodeModify>" on ModifyBooking Page
    And select the HotelCommunication "<HotelCommunicationModify>" on SelectTravelerPage
    And user click on ModifyBooking button
    Then user should redirect to BookingConfirmationPage
    Then Booking should be created successfully
    And user verify the error message on BookingConfirmationPage
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS   | PNR    | TestCaseName                                           | check-In | check-Out | HotelName                                                                                                                                                                                                                                       | MissedSavingsCode | PaymentMode      | PaymentType                         | HotelCommunication | rate              | MissedSavingsCodeModify                    | HotelCommunicationModify | HotelCommunicationCancel |
      | Sabre | XIKWAS | TA-263 - Modification Flow - AU - Sabre - RoomIt rates |       90 |        91 | STARHOTELS SPLENDID VENICE, SAN MARCO MERCERIE 760, VENICE, ITALY, 30124;NH BUENOS AIRES 9 DE JULIO, AVENIDA CERRITO 154 156, BUENOS AIRES, ARGENTINA, C1010AAD;SAVOY HOTEL BUENOS AIRES, AV CALLAO 181, BUENOS AIRES, ARGENTINA, C1022CCB;CWV; | I - Rate Sold Out | Pay on departure | Pay on departure - Visa ending 0002 | No                 | RoomIt rates;CWV; | J - Authorized Room Type Outside Of Policy | No                       | No                       |

  @TA-175
  Scenario Outline: TA-175 -  Modification Flow - ES - Amadeus - Booking.com
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Modify button on BookingConfirmationPage
    Then user should redirect to ModifyBooking Page
    And user click on ModifyCheckInAndCheckOut link on ModifyBooking Page
    And user change the Check-In and Check-Out Date on ModifyBooking Page
    And user select the rate "<rate>" on ModifyBooking Page
    And select the HotelCommunication "<HotelCommunicationModify>" on SelectTravelerPage
    And user click on ModifyBooking button
    Then user should redirect to BookingConfirmationPage
    Then Booking should be created successfully
    And user verify the error message on BookingConfirmationPage
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                             | check-In | check-Out | HotelName                                                                             | PaymentMode      | PaymentType                         | HotelCommunication | rate          | HotelCommunicationModify | HotelCommunicationCancel |
      | Amadeus | LOIXWT | TA-175 -  Modification Flow - ES - Amadeus - Booking.com |       90 |        91 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | Pay on departure | Pay on departure - Visa ending 0002 | No                 | Aggregator;BC | No                       | No                       |

  @TA-176
  Scenario Outline: TA-176 - Modification Flow - ES - Amadeus - RoomIt rates
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Modify button on BookingConfirmationPage
    Then user should redirect to ModifyBooking Page
    And user click on ModifyCheckInAndCheckOut link on ModifyBooking Page
    And user change the Check-In and Check-Out Date on ModifyBooking Page
    And user select the rate "<rate>" on ModifyBooking Page
    And select the HotelCommunication "<HotelCommunicationModify>" on SelectTravelerPage
    And user click on ModifyBooking button
    Then user should redirect to BookingConfirmationPage
    Then Booking should be created successfully
    And user verify the error message on BookingConfirmationPage
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                             | check-In | check-Out | HotelName                                                                                                                                                                                                                  | PaymentMode      | PaymentType                         | HotelCommunication | rate              | HotelCommunicationModify | HotelCommunicationCancel |
      | Amadeus | LOIXWT | TA-176 - Modification Flow - ES - Amadeus - RoomIt rates |       90 |        91 | BRUNELLESCHI HOTEL MILANO, VIA FLAVIO BARACCHINI 12, MILAN, ITALY, I20123;NH FIRENZE, PIAZZA VITTORIO VENETO 4 A, FLORENCE, ITALY, 50123;Crowne Plaza Galleria, Ortigas Avenue Corner, Quezon City, Philippines, 1100;CWV; | Pay on departure | Pay on departure - Visa ending 0002 | No                 | RoomIt rates;CWV; | No                       | No                       |

  @TA-177
  Scenario Outline: TA-177 - Booking Flow - ES - Amadeus - On Request
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    When select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to onrequestffcPage
    #When user click on ContactInfo and NotificationEmail option on onrequestffcPage
    When user click on FulfillNow button on onrequestffcPage
    And user select the RoomDescription "<RoomDescription>" on onrequestffcPage
    And user select the RateDescription "<RateDescription>" on onrequestffcPage
    And click on CommissionableRadioBtn on onrequestffcPage
    And eneter the CommissionAmount "<CommissionAmount>" on onrequestffcPage
    And enter the RatePerDay "<RatePerDay>" on onrequestffcPage
    And user select the MealPlan "<MealPlan>" on onrequestffcPage
    And enter the BreakfastAmount "<BreakfastAmount>" on onrequestffcPage
    And user select the BreakfastAvailability "<BreakfastAvailability>" on onrequestffcPage
    And enter the ConfirmationNum "<ConfirmationNum>" on onrequestffcPage
    And user select the PaymentMode "<PaymentMode>" on onrequestffcPage
    And select the PaymentType "<PaymentType>" on onrequestffcPage
    And user select the BookingSource "<BookingSource>" on onrequestffcPage
    And select the HotelCommunication "<HotelCommunication>" on onrequestffcPage
    And user select the ReasonForOnRequestDdl "<ReasonForOnRequestDdl>" on onrequestffcPage
    And user select the ReasonForOnRequestTxtBox "<ReasonForOnRequestTxtBox>" on onrequestffcPage
    And click on ConfirmBooking Button on onrequestffcPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user enter CancellationRefNum "<CancellationRefNum>" on CancelBooking Page
    And user enter CancellationFees "<CancellationFees>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                      | check-In | check-Out | HotelName                                                                                                                                                                                                              | RoomDescription | RateDescription          | CommissionAmount | RatePerDay | MealPlan         | BreakfastAmount | BreakfastAvailability | ConfirmationNum | PaymentMode      | PaymentType                         | BookingSource | HotelCommunication | ReasonForOnRequestDdl | ReasonForOnRequestTxtBox | HotelCommunicationCancel | CancellationRefNum | CancellationFees |
      | Amadeus | LOIXWT | TA-177 - Booking Flow - ES - Amadeus - On Request |       90 |        91 | HYATT REGENCY TOKYO, 2-7-2 NISHI-SHINJUKU, TOKYO, JAPAN, 160-0023;WALDORF ASTORIA BEIJING, 5 15 JINYU HUTONG, BEIJING, CHINA, 100006;GRAND HYATT BEIJING, NO 1 EAST CHANG AN AVENUE, BEIJING, CHINA, 100738;OnRequest; | Single Room     | RAC for all Public rates |               20 |        100 | Buffet Breakfast |              10 | Exclusive             |            1234 | Pay on departure | Pay on departure - Visa ending 0002 | On-Request    | No                 | Other                 | Test Booking             | No                       |               1234 |                0 |

  @TA-195
  Scenario Outline: TA-195 - Booking Flow - FR - Amadeus - Public Rate
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                       | check-In | check-Out | HotelName                                                                                                                                                                                                                                | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Amadeus | Q9YD8B | TA-195 - Booking Flow - FR - Amadeus - Public Rate |       90 |        91 | Artotel Budapest, Bem Rakpart 16-19, Budapest, Hungary, 1011;HAMPTON INN AND SUITES MEXICO CITY, CALLE 5 DE FEBRERO NO 24, COLONIA CENTRO, MEXICO CITY, MEXICO, 06060;Hilton Budapest, Hess A Ter 1 3, Budapest, Hungary, H 1014;Public; | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-194
  Scenario Outline: TA-194 - Booking Flow - FR - Amadeus - RoomIt Rates
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                        | check-In | check-Out | HotelName                                                                                                                                                                                                               | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Amadeus | Q9YD8B | TA-194 - Booking Flow - FR - Amadeus - RoomIt Rates |       90 |        91 | RADISSON BLU DOHA, SALWA ROAD INTERSECTION OF C R, DOHA, DOHA, QATAR;Park Inn by Radisson Kyiv Troyitska, 55 Velyka Street, Kiev, Ukraine, 03150;Radisson Blu Kiev, Yaroslaviv Val Street 22, Kiev, Ukraine, 01034;CWV; | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-197
  Scenario Outline: TA-197 - Booking Flow - FR - Amadeus - Expedia
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                   | check-In | check-Out | HotelName                                                                                                                                                                                                                         | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Amadeus | Q9YD8B | TA-197 - Booking Flow - FR - Amadeus - Expedia |       91 |        92 | RADISSON BLU DOHA, SALWA ROAD INTERSECTION OF C R, DOHA, DOHA, QATAR;Park Inn by Radisson Kyiv Troyitska, 55 Velyka Street, Kiev, Ukraine, 03150;Radisson Blu Kiev, Yaroslaviv Val Street 22, Kiev, Ukraine, 01034;Aggregator;EAN | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-196
  Scenario Outline: TA-196 - Booking Flow - FR - Amadeus - Booking.com
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                       | check-In | check-Out | HotelName                                                                             | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Amadeus | Q9YD8B | TA-196 - Booking Flow - FR - Amadeus - Booking.com |       90 |        91 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-200
  Scenario Outline: TA-200 - Modification Flow - FR - Amadeus - Booking.com
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Modify button on BookingConfirmationPage
    Then user should redirect to ModifyBooking Page
    And user click on ModifyCheckInAndCheckOut link on ModifyBooking Page
    And user change the Check-In and Check-Out Date on ModifyBooking Page
    And user select the rate "<rate>" on ModifyBooking Page
    And select the HotelCommunication "<HotelCommunicationModify>" on ModifyBooking Page
    And user click on ModifyBooking button
    Then user should redirect to BookingConfirmationPage
    Then Booking should be created successfully
    And user verify the error message on BookingConfirmationPage
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                            | check-In | check-Out | HotelName                                                                             | PaymentMode      | PaymentType                         | HotelCommunication | rate          | HotelCommunicationModify | HotelCommunicationCancel |
      | Amadeus | Q9YD8B | TA-200 - Modification Flow - FR - Amadeus - Booking.com |       90 |        91 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | Pay on departure | Pay on departure - Visa ending 0002 | No                 | Aggregator;BC | No                       | No                       |

  @TA-174
  Scenario Outline: TA - 174 - Booking Flow  - ES - Amadeus - Expedia
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                      | check-In | check-Out | HotelName                                                                                                                                                                                                                         | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Amadeus | LOIXWT | TA - 174 - Booking Flow  - ES - Amadeus - Expedia |       91 |        92 | RADISSON BLU DOHA, SALWA ROAD INTERSECTION OF C R, DOHA, DOHA, QATAR;Park Inn by Radisson Kyiv Troyitska, 55 Velyka Street, Kiev, Ukraine, 03150;Radisson Blu Kiev, Yaroslaviv Val Street 22, Kiev, Ukraine, 01034;Aggregator;EAN | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-173
  Scenario Outline: TA-173 - Booking Flow - ES - Amadeus - Booking.com
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                       | check-In | check-Out | HotelName                                                                                                                                                                                                                        | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Amadeus | LOIXWT | TA-173 - Booking Flow - ES - Amadeus - Booking.com |       91 |        92 | RADISSON BLU DOHA, SALWA ROAD INTERSECTION OF C R, DOHA, DOHA, QATAR;Park Inn by Radisson Kyiv Troyitska, 55 Velyka Street, Kiev, Ukraine, 03150;Radisson Blu Kiev, Yaroslaviv Val Street 22, Kiev, Ukraine, 01034;Aggregator;BC | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-253
  Scenario Outline: TA-253 - Booking Flow - CH - Galileo - Booking.com
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                       | check-In | check-Out | HotelName                                                                             | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Galileo | 7HS0GA | TA-253 - Booking Flow - CH - Galileo - Booking.com |       90 |        91 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-244
  Scenario Outline: TA- 244 - Booking Flow - HK - Galileo - RoomIt rates
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select MissedSavingCode "<MissedSavingsCode>"
    And user select RealizedSavingsCode "<RealizedSavingCode>"
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                         | check-In | check-Out | HotelName                                                                                                                                                                         | MissedSavingsCode       | RealizedSavingCode | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Galileo | VPG222 | TA- 244 - Booking Flow - HK - Galileo - RoomIt rates |       90 |        91 | Radisson New Rochelle New York;Park Inn by Radisson Kyiv Troyitska, 55 Velyka Street, Kiev, Ukraine, 03150;Radisson Blu Kiev, Yaroslaviv Val Street 22, Kiev, Ukraine, 01034;CWV; | B - Personal Preference | XX - No Savings    | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-245
  Scenario Outline: TA- 245 - Booking Flow - HK - Galileo - Public Rate
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select MissedSavingCode "<MissedSavingsCode>"
    And user select RealizedSavingsCode "<RealizedSavingCode>"
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                        | check-In | check-Out | HotelName                                                                                                                                                                                 | MissedSavingsCode                          | RealizedSavingCode | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Galileo | VPG222 | TA- 245 - Booking Flow - HK - Galileo - Public Rate |       90 |        91 | Crowne Plaza Hong Kong Causeway Bay;Park Inn by Radisson Kyiv Troyitska, 55 Velyka Street, Kiev, Ukraine, 03150;Radisson Blu Kiev, Yaroslaviv Val Street 22, Kiev, Ukraine, 01034;Public; | J - Authorized Room Type Outside Of Policy | XX - No Savings    | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-248
  Scenario Outline: TA-248 - Booking Flow - HK - Galileo - On Request
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    When select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to onrequestffcPage
    #When user click on ContactInfo and NotificationEmail option on onrequestffcPage
    When user click on FulfillNow button on onrequestffcPage
    And user select the RoomDescription "<RoomDescription>" on onrequestffcPage
    And user select the RateDescription "<RateDescription>" on onrequestffcPage
    And click on CommissionableRadioBtn on onrequestffcPage
    And eneter the CommissionAmount "<CommissionAmount>" on onrequestffcPage
    And enter the RatePerDay "<RatePerDay>" on onrequestffcPage
    And user select the MealPlan "<MealPlan>" on onrequestffcPage
    And enter the BreakfastAmount "<BreakfastAmount>" on onrequestffcPage
    And user select the BreakfastAvailability "<BreakfastAvailability>" on onrequestffcPage
    And enter the ConfirmationNum "<ConfirmationNum>" on onrequestffcPage
    And user select HighRoomRate "<HighRoomRateValue>"
    And user select LowRoomRate "<LowRoomRateValue>"
    And user select MissedSavingCode "<MissedSavingsCode>"
    And user select RealizedSavingsCode "<RealizedSavingCode>"
    And user select the PaymentMode "<PaymentMode>" on onrequestffcPage
    And select the PaymentType "<PaymentType>" on onrequestffcPage
    And user select the BookingSource "<BookingSource>" on onrequestffcPage
    And select the HotelCommunication "<HotelCommunication>" on onrequestffcPage
    And user select the ReasonForOnRequestDdl "<ReasonForOnRequestDdl>" on onrequestffcPage
    And user select the ReasonForOnRequestTxtBox "<ReasonForOnRequestTxtBox>" on onrequestffcPage
    And click on ConfirmBooking Button on onrequestffcPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user enter CancellationRefNum "<CancellationRefNum>" on CancelBooking Page
    And user enter CancellationFees "<CancellationFees>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                      | check-In | check-Out | HotelName                                                                                                                                                                                                              | RoomDescription | RateDescription          | CommissionAmount | RatePerDay | MealPlan         | BreakfastAmount | BreakfastAvailability | ConfirmationNum | HighRoomRateValue | LowRoomRateValue | MissedSavingsCode       | RealizedSavingCode | PaymentMode      | PaymentType                         | BookingSource | HotelCommunication | ReasonForOnRequestDdl | ReasonForOnRequestTxtBox | HotelCommunicationCancel | CancellationRefNum | CancellationFees |
      | Galileo | VPG222 | TA-248 - Booking Flow - HK - Galileo - On Request |       90 |        91 | HYATT REGENCY TOKYO, 2-7-2 NISHI-SHINJUKU, TOKYO, JAPAN, 160-0023;WALDORF ASTORIA BEIJING, 5 15 JINYU HUTONG, BEIJING, CHINA, 100006;GRAND HYATT BEIJING, NO 1 EAST CHANG AN AVENUE, BEIJING, CHINA, 100738;OnRequest; | Single Room     | RAC for all Public rates |               20 |        100 | Buffet Breakfast |              10 | Exclusive             |            1234 |               100 |              100 | B - Personal Preference | XX - No Savings    | Pay on departure | Pay on departure - Visa ending 0002 | On-Request    | No                 | Other                 | Test Booking             | No                       |               1234 |                0 |

  @TA-246
  Scenario Outline: TA-246 - Booking Flow - HK - Galileo - Booking.com
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select MissedSavingCode "<MissedSavingsCode>"
    And user select RealizedSavingsCode "<RealizedSavingCode>"
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                       | check-In | check-Out | HotelName                                                                             | MissedSavingsCode            | RealizedSavingCode | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Galileo | VPG222 | TA-246 - Booking Flow - HK - Galileo - Booking.com |       90 |        91 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | N - Preferred Hotel Declined | XX - No Savings    | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-247
  Scenario Outline: TA-247 - Booking Flow - HK - Galileo - Expedia
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select MissedSavingCode "<MissedSavingsCode>"
    And user select RealizedSavingsCode "<RealizedSavingCode>"
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                   | check-In | check-Out | HotelName                                                                                                                                                                                                                                                                                              | MissedSavingsCode                          | RealizedSavingCode | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Galileo | VPG222 | TA-247 - Booking Flow - HK - Galileo - Expedia |       90 |        91 | Crowne Plaza Johannesburg The Rosebank, Cnr Tyrwhitt and Sturdee Ave, Rosebank, Johannesburg, South Africa, 2132;Holiday Inn Genoa City, Via Milano 47, Genova, Italy, 16126;Intercontinental Johannesburg, Corner Of Maude and 5th Street, P O Box 784902, Sandton, South Africa, 2146;Aggregator;EAN | J - Authorized Room Type Outside Of Policy | XX - No Savings    | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-249
  Scenario Outline: TA-249 - Modification Flow - HK - Galileo - RoomIt rates
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select MissedSavingCode "<MissedSavingsCode>"
    And user select RealizedSavingsCode "<RealizedSavingCode>"
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Modify button on BookingConfirmationPage
    Then user should redirect to ModifyBooking Page
    And user click on ModifyCheckInAndCheckOut link on ModifyBooking Page
    And user change the Check-In and Check-Out Date on ModifyBooking Page
    And user select the rate "<rate>" on ModifyBooking Page
    And select the HotelCommunication "<HotelCommunicationModify>" on ModifyBooking Page
    And user click on ModifyBooking button
    Then user should redirect to BookingConfirmationPage
    Then Booking should be created successfully
    And user verify the error message on BookingConfirmationPage
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                             | check-In | check-Out | HotelName                                                                                                                                                                                                                                                  | MissedSavingsCode       | RealizedSavingCode | PaymentMode      | PaymentType                         | HotelCommunication | rate              | HotelCommunicationModify | HotelCommunicationCancel |
      | Galileo | VQBNCA | TA-249 - Modification Flow - HK - Galileo - RoomIt rates |       90 |        91 | VINCCI THE MINT, C GRAN VIA 10, MADRID, SPAIN, 28013;Radisson Blu Gautrain Sandton, Corner Of Rivonia Rd and West, Wes Sandton, Johannesburg, South Africa, 2196;Radisson Blu Resort Galzignano, Viale Delle Terme 84, Galzignano Terme, Italy, 35030;CWV; | B - Personal Preference | XX - No Savings    | Pay on departure | Pay on departure - Visa ending 0002 | No                 | RoomIt rates;CWV; | No                       | No                       |

  @TA-250
  Scenario Outline: TA-250 - Modification Flow - HK - Galileo - Booking.com
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select MissedSavingCode "<MissedSavingsCode>"
    And user select RealizedSavingsCode "<RealizedSavingCode>"
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Modify button on BookingConfirmationPage
    Then user should redirect to ModifyBooking Page
    And user click on ModifyCheckInAndCheckOut link on ModifyBooking Page
    And user change the Check-In and Check-Out Date on ModifyBooking Page
    And user select the rate "<rate>" on ModifyBooking Page
    And user select MissedSavingCode "<MissedSavingsCodeModify>" on ModifyBooking Page
    And select the HotelCommunication "<HotelCommunicationModify>" on ModifyBooking Page
    And user click on ModifyBooking button
    Then user should redirect to BookingConfirmationPage
    Then Booking should be created successfully
    And user verify the error message on BookingConfirmationPage
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                            | check-In | check-Out | HotelName                                                                             | MissedSavingsCode            | RealizedSavingCode | PaymentMode      | PaymentType                         | HotelCommunication | rate          | MissedSavingsCodeModify | HotelCommunicationModify | HotelCommunicationCancel |
      | Galileo | VPG222 | TA-250 - Modification Flow - HK - Galileo - Booking.com |       90 |        91 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | N - Preferred Hotel Declined | XX - No Savings    | Pay on departure | Pay on departure - Visa ending 0002 | No                 | Aggregator;BC | B - Personal Preference | No                       | No                       |

  @TA-230
  Scenario Outline: TA- 230 - Booking Flow - SG - Galileo - RoomIt rates
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select MissedSavingCode "<MissedSavingsCode>"
    And user select RealizedSavingsCode "<RealizedSavingCode>"
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                         | check-In | check-Out | HotelName                                                                                                                                                                                                                                            | MissedSavingsCode       | RealizedSavingCode                | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Galileo | E9HCZK | TA- 230 - Booking Flow - SG - Galileo - RoomIt rates |       90 |        91 | Country Inn and Suites Orlando Airport, 5440 Forbes Place, Orlando, Florida, United States, 32812;Park Inn by Radisson Kyiv Troyitska, 55 Velyka Street, Kiev, Ukraine, 03150;Radisson Blu Kiev, Yaroslaviv Val Street 22, Kiev, Ukraine, 01034;CWV; | B - Personal Preference | WF - CWT Negotiated Rate Accepted | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-234
  Scenario Outline: TA-234 - Booking Flow - SG - Galileo - On Request
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    When select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to onrequestffcPage
    #When user click on ContactInfo and NotificationEmail option on onrequestffcPage
    When user click on FulfillNow button on onrequestffcPage
    And user select the RoomDescription "<RoomDescription>" on onrequestffcPage
    And user select the RateDescription "<RateDescription>" on onrequestffcPage
    And click on CommissionableRadioBtn on onrequestffcPage
    And eneter the CommissionAmount "<CommissionAmount>" on onrequestffcPage
    And enter the RatePerDay "<RatePerDay>" on onrequestffcPage
    And user select the MealPlan "<MealPlan>" on onrequestffcPage
    And enter the BreakfastAmount "<BreakfastAmount>" on onrequestffcPage
    And user select the BreakfastAvailability "<BreakfastAvailability>" on onrequestffcPage
    And enter the ConfirmationNum "<ConfirmationNum>" on onrequestffcPage
    And user select HighRoomRate "<HighRoomRateValue>"
    And user select LowRoomRate "<LowRoomRateValue>"
    And user select MissedSavingCode "<MissedSavingsCode>"
    And user select RealizedSavingsCode "<RealizedSavingCode>"
    And user select the PaymentMode "<PaymentMode>" on onrequestffcPage
    And select the PaymentType "<PaymentType>" on onrequestffcPage
    And user select the BookingSource "<BookingSource>" on onrequestffcPage
    And select the HotelCommunication "<HotelCommunication>" on onrequestffcPage
    And select the ReasonForNotSending "<ReasonForNotSendingValueOnRequestPage>" on onrequestffcPage
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingReasonValueOnRequestPage>" on onrequestffcPage
    And user select the ReasonForOnRequestDdl "<ReasonForOnRequestDdl>" on onrequestffcPage
    And user select the ReasonForOnRequestTxtBox "<ReasonForOnRequestTxtBox>" on onrequestffcPage
    And click on ConfirmBooking Button on onrequestffcPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And select the ReasonForNotSending "<ReasonForNotSendingCancelValue>" on CancelBooking Page
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingCancelReasonValue>" on CancelBooking Page
    And user enter CancellationRefNum "<CancellationRefNum>" on CancelBooking Page
    And user enter CancellationFees "<CancellationFees>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                      | check-In | check-Out | HotelName                                                                                                                                                                          | RoomDescription | RateDescription          | CommissionAmount | RatePerDay | MealPlan         | BreakfastAmount | BreakfastAvailability | ConfirmationNum | HighRoomRateValue | LowRoomRateValue | MissedSavingsCode       | RealizedSavingCode | PaymentMode      | PaymentType                         | BookingSource | HotelCommunication | ReasonForNotSendingValueOnRequestPage | ReasonForNotSendingReasonValueOnRequestPage | ReasonForOnRequestDdl | ReasonForOnRequestTxtBox | HotelCommunicationCancel | ReasonForNotSendingCancelValue | ReasonForNotSendingCancelReasonValue | CancellationRefNum | CancellationFees |
      | Galileo | E9HCZK | TA-234 - Booking Flow - SG - Galileo - On Request |       90 |        91 | NOVOTEL CLARKE QUAY SINGAPORE;WALDORF ASTORIA BEIJING, 5 15 JINYU HUTONG, BEIJING, CHINA, 100006;GRAND HYATT BEIJING, NO 1 EAST CHANG AN AVENUE, BEIJING, CHINA, 100738;OnRequest; | Single Room     | RAC for all Public rates |               20 |        100 | Buffet Breakfast |              10 | Exclusive             |            1234 |               100 |              100 | B - Personal Preference | XX - No Savings    | Pay on departure | Pay on departure - Visa ending 0002 | On-Request    | No                 | Other                                 | Test Booking                                | Other                 | Test Booking             | No                       | Other                          | Test Booking                         |               1234 |                0 |

  @TA-233
  Scenario Outline: TA-233 - Booking Flow - SG - Galileo - Expedia
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select HighRoomRate "<HighRoomRateValue>"
    And user select LowRoomRate "<LowRoomRateValue>"
    And user select MissedSavingCode "<MissedSavingsCode>"
    And user select RealizedSavingsCode "<RealizedSavingCode>"
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                   | check-In | check-Out | HotelName                                                                                                                                                                                  | HighRoomRateValue | LowRoomRateValue | MissedSavingsCode       | RealizedSavingCode | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Galileo | E9HCZK | TA-233 - Booking Flow - SG - Galileo - Expedia |       90 |        91 | NOVOTEL CLARKE QUAY SINGAPORE;Park Inn by Radisson Kyiv Troyitska, 55 Velyka Street, Kiev, Ukraine, 03150;Radisson Blu Kiev, Yaroslaviv Val Street 22, Kiev, Ukraine, 01034;Aggregator;EAN |               200 |              100 | B - Personal Preference | XX - No Savings    | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-232
  Scenario Outline: TA- 232 - Booking Flow - SG - Galileo - Bookig.com
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select MissedSavingCode "<MissedSavingsCode>"
    And user select RealizedSavingsCode "<RealizedSavingCode>"
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                       | check-In | check-Out | HotelName                                                                             | MissedSavingsCode       | RealizedSavingCode | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Galileo | E9HCZK | TA- 232 - Booking Flow - SG - Galileo - Bookig.com |       90 |        91 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | B - Personal Preference | XX - No Savings    | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-231
  Scenario Outline: TA-231 - Booking Flow - SG - Galileo - Public Rate
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select MissedSavingCode "<MissedSavingsCode>"
    And user select RealizedSavingsCode "<RealizedSavingCode>"
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                       | check-In | check-Out | HotelName                                                                                                                                                                                                    | MissedSavingsCode       | RealizedSavingCode | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Galileo | E9HCZK | TA-231 - Booking Flow - SG - Galileo - Public Rate |       90 |        91 | NOVOTEL CLARKE QUAY SINGAPORE;Holiday Inn Genoa City, Via Milano 47, Genova, Italy, 16126;Intercontinental Johannesburg, Corner Of Maude and 5th Street, P O Box 784902, Sandton, South Africa, 2146;Public; | B - Personal Preference | XX - No Savings    | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-236
  Scenario Outline: TA-236 - Modification Flow -  SG - Galileo - Booking.com
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select MissedSavingCode "<MissedSavingsCode>"
    And user select RealizedSavingsCode "<RealizedSavingCode>"
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Modify button on BookingConfirmationPage
    Then user should redirect to ModifyBooking Page
    And user click on ModifyCheckInAndCheckOut link on ModifyBooking Page
    And user change the Check-In and Check-Out Date on ModifyBooking Page
    And user select the rate "<rate>" on ModifyBooking Page
    And user click on ModifyBooking button
    Then user should redirect to BookingConfirmationPage
    Then Booking should be created successfully
    And user verify the error message on BookingConfirmationPage
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                             | check-In | check-Out | HotelName                                                                             | MissedSavingsCode       | RealizedSavingCode | PaymentMode      | PaymentType                         | HotelCommunication | rate          | HotelCommunicationModify | HotelCommunicationCancel |
      | Galileo | E9HCZK | TA-236 - Modification Flow -  SG - Galileo - Booking.com |       90 |        91 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | B - Personal Preference | XX - No Savings    | Pay on departure | Pay on departure - Visa ending 0002 | No                 | Aggregator;BC | No                       | No                       |

  @TA-235
  Scenario Outline: TA-235 - Modification Flow - SG - Galileo - RoomIt rates
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select MissedSavingCode "<MissedSavingsCode>"
    And user select RealizedSavingsCode "<RealizedSavingCode>"
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Modify button on BookingConfirmationPage
    Then user should redirect to ModifyBooking Page
    And user click on ModifyCheckInAndCheckOut link on ModifyBooking Page
    And user change the Check-In and Check-Out Date on ModifyBooking Page
    And user select the rate "<rate>" on ModifyBooking Page
    And user click on ModifyBooking button
    Then user should redirect to BookingConfirmationPage
    Then Booking should be created successfully
    And user verify the error message on BookingConfirmationPage
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                             | check-In | check-Out | HotelName                                                                                                                                                             | MissedSavingsCode       | RealizedSavingCode                | PaymentMode      | PaymentType                         | HotelCommunication | rate              | HotelCommunicationModify | HotelCommunicationCancel |
      | Galileo | E9HCZK | TA-235 - Modification Flow - SG - Galileo - RoomIt rates |       90 |        91 | Park Hyatt Chicago;Park Inn by Radisson Kyiv Troyitska, 55 Velyka Street, Kiev, Ukraine, 03150;Radisson Blu Kiev, Yaroslaviv Val Street 22, Kiev, Ukraine, 01034;CWV; | B - Personal Preference | WF - CWT Negotiated Rate Accepted | Pay on departure | Pay on departure - Visa ending 0002 | No                 | RoomIt rates;CWV; | No                       | No                       |

  @TA-283
  Scenario Outline: TA-283 - Booking Flow - FI - Amadeus - On Request
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    When select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to onrequestffcPage
    #When user click on ContactInfo and NotificationEmail option on onrequestffcPage
    When user click on FulfillNow button on onrequestffcPage
    And user select the RoomDescription "<RoomDescription>" on onrequestffcPage
    And user select the RateDescription "<RateDescription>" on onrequestffcPage
    And click on CommissionableRadioBtn on onrequestffcPage
    And eneter the CommissionAmount "<CommissionAmount>" on onrequestffcPage
    And enter the RatePerDay "<RatePerDay>" on onrequestffcPage
    And user select the MealPlan "<MealPlan>" on onrequestffcPage
    And enter the BreakfastAmount "<BreakfastAmount>" on onrequestffcPage
    And user select the BreakfastAvailability "<BreakfastAvailability>" on onrequestffcPage
    And enter the ConfirmationNum "<ConfirmationNum>" on onrequestffcPage
    And user select the PaymentMode "<PaymentMode>" on onrequestffcPage
    And select the PaymentType "<PaymentType>" on onrequestffcPage
    And user select the BookingSource "<BookingSource>" on onrequestffcPage
    And select the HotelCommunication "<HotelCommunication>" on onrequestffcPage
    And user select the ReasonForOnRequestDdl "<ReasonForOnRequestDdl>" on onrequestffcPage
    And user select the ReasonForOnRequestTxtBox "<ReasonForOnRequestTxtBox>" on onrequestffcPage
    And click on ConfirmBooking Button on onrequestffcPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user enter CancellationRefNum "<CancellationRefNum>" on CancelBooking Page
    And user enter CancellationFees "<CancellationFees>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                      | check-In | check-Out | HotelName                                                                                                                                                                                                      | RoomDescription | RateDescription          | CommissionAmount | RatePerDay | MealPlan         | BreakfastAmount | BreakfastAvailability | ConfirmationNum | PaymentMode      | PaymentType                         | BookingSource | HotelCommunication | ReasonForOnRequestDdl | ReasonForOnRequestTxtBox | HotelCommunicationCancel | CancellationRefNum | CancellationFees |
      | Amadeus | LFXOX3 | TA-283 - Booking Flow - FI - Amadeus - On Request |       90 |        91 | Park Hyatt Chicago;METROPOLITAN HOTEL VANCOUVER, 645 HOWE STREET, VANCOUVER, BRITISH COLUMBIA, CANADA, V6C 2Y9;EXECUTIVE LE SOLEIL, 567 HORNBY STREET, VANCOUVER, BRITISH COLUMBIA, CANADA, V6C 2E8;OnRequest; | Single Room     | RAC for all Public rates |               20 |        100 | Buffet Breakfast |              10 | Exclusive             |            1234 | Pay on departure | Pay on departure - Visa ending 0002 | On-Request    | No                 | Other                 | Test Booking             | No                       |               1234 |                0 |

  @TA-279
  Scenario Outline: TA-279 - Booking Flow - FI - Amadeus - RoomIt rates
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                        | check-In | check-Out | HotelName                                                                                                                                                                                                                                    | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Amadeus | LFXOX3 | TA-279 - Booking Flow - FI - Amadeus - RoomIt rates |       90 |        91 | NH GENEVA AIRPORT, AVENUE DE MATEGNIN 21, GENEVA, SWITZERLAND, 1217;HAMPTON INN AND SUITES MEXICO CITY, CALLE 5 DE FEBRERO NO 24, COLONIA CENTRO, MEXICO CITY, MEXICO, 06060;Hilton Budapest, Hess A Ter 1 3, Budapest, Hungary, H 1014;CWV; | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-280
  Scenario Outline: TA-280 - Booking Flow - FI - Amadeus - Public Rate
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                       | check-In | check-Out | HotelName                                                                                                                                                                                          | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Amadeus | LFXOX3 | TA-280 - Booking Flow - FI - Amadeus - Public Rate |       90 |        91 | Clarion Hotel Helsinki;HAMPTON INN AND SUITES MEXICO CITY, CALLE 5 DE FEBRERO NO 24, COLONIA CENTRO, MEXICO CITY, MEXICO, 06060;Hilton Budapest, Hess A Ter 1 3, Budapest, Hungary, H 1014;Public; | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-281
  Scenario Outline: TA-281 - Booking Flow - FI - Amadeus - Booking.com
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                       | check-In | check-Out | HotelName                                                                             | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Amadeus | LFXOX3 | TA-281 - Booking Flow - FI - Amadeus - Booking.com |       90 |        91 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-282
  Scenario Outline: TA-282 - Booking Flow - FI - Amadeus - Expedia
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                   | check-In | check-Out | HotelName                                                                                                                                                                                                                                                                                                             | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Amadeus | LFXOX3 | TA-282 - Booking Flow - FI - Amadeus - Expedia |       90 |        91 | Jurys Inn Liverpool, 31 Keel Wharf, Liverpool, Merseyside, United Kingdom, L3 4fn;Hampton by Hilton Liverpool City Centre, Kings Dock Mill 7 Hurst Street, Liverpool, Merseyside, United Kingdom, L1 8da;Holiday Inn City Centre Liverpool, Lime Street, Liverpool, Merseyside, United Kingdom, L1 1nq;Aggregator;EAN | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-284
  Scenario Outline: TA-284 - Modification Flow - FI - Amadeus - RoomIt rates
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Modify button on BookingConfirmationPage
    Then user should redirect to ModifyBooking Page
    And user click on ModifyCheckInAndCheckOut link on ModifyBooking Page
    And user change the Check-In and Check-Out Date on ModifyBooking Page
    And user select the rate "<rate>" on ModifyBooking Page
    And select the HotelCommunication "<HotelCommunicationModify>" on ModifyBooking Page
    And user click on ModifyBooking button
    Then user should redirect to BookingConfirmationPage
    Then Booking should be created successfully
    And user verify the error message on BookingConfirmationPage
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                             | check-In | check-Out | HotelName                                                                                                                                                                                                                                                                                                       | PaymentMode      | PaymentType                         | HotelCommunication | rate              | HotelCommunicationModify | HotelCommunicationCancel |
      | Amadeus | LFXOX3 | TA-284 - Modification Flow - FI - Amadeus - RoomIt rates |       90 |        91 | Jurys Inn Liverpool, 31 Keel Wharf, Liverpool, Merseyside, United Kingdom, L3 4fn;Holiday Inn Express Washington Dc East, 5001 Mercedes Boulevard, Camp Springs, Maryland, United States, 20746;Hampton Inn and Suites Camp Springs, 5000 Mercedes Boulevard, Camp Springs, Maryland, United States, 20746;CWV; | Pay on departure | Pay on departure - Visa ending 0002 | No                 | RoomIt rates;CWV; | No                       | No                       |

  @TA-285
  Scenario Outline: TA-285 - Modification Flow - FI - Amadeus - Booking.com
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Modify button on BookingConfirmationPage
    Then user should redirect to ModifyBooking Page
    And user click on ModifyCheckInAndCheckOut link on ModifyBooking Page
    And user change the Check-In and Check-Out Date on ModifyBooking Page
    And user select the rate "<rate>" on ModifyBooking Page
    And select the HotelCommunication "<HotelCommunicationModify>" on ModifyBooking Page
    And user click on ModifyBooking button
    Then user should redirect to BookingConfirmationPage
    Then Booking should be created successfully
    And user verify the error message on BookingConfirmationPage
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                            | check-In | check-Out | HotelName                                                                             | PaymentMode      | PaymentType                         | HotelCommunication | rate          | HotelCommunicationModify | HotelCommunicationCancel |
      | Amadeus | LFXOX3 | TA-285 - Modification Flow - FI - Amadeus - Booking.com |       90 |        91 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | Pay on departure | Pay on departure - Visa ending 0002 | No                 | Aggregator;BC | No                       | No                       |

  @TA-265
  Scenario Outline: TA-265 - Booking Flow - BR - Sabre - RoomIt rates
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS   | PNR    | TestCaseName                                      | check-In | check-Out | HotelName                                                                                                                                                                                                                                    | PaymentMode        | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Sabre | POIBCU | TA-265 - Booking Flow - BR - Sabre - RoomIt rates |       90 |        91 | NH GENEVA AIRPORT, AVENUE DE MATEGNIN 21, GENEVA, SWITZERLAND, 1217;HAMPTON INN AND SUITES MEXICO CITY, CALLE 5 DE FEBRERO NO 24, COLONIA CENTRO, MEXICO CITY, MEXICO, 06060;Hilton Budapest, Hess A Ter 1 3, Budapest, Hungary, H 1014;CWV; | Pagamento na saída | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-266
  Scenario Outline: TA-266 - Booking Flow - BR - Sabre - Public Rate
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS   | PNR    | TestCaseName                                     | check-In | check-Out | HotelName                                                                                                                                                                                                                                                    | PaymentMode        | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Sabre | POIBCU | TA-266 - Booking Flow - BR - Sabre - Public Rate |       90 |        91 | MELIA BRASIL 21, SHS QUADRA 6 BLOCOS B D F, ASA SUL, BRASILIA, BRAZIL, 74316 000;HAMPTON INN AND SUITES MEXICO CITY, CALLE 5 DE FEBRERO NO 24, COLONIA CENTRO, MEXICO CITY, MEXICO, 06060;Hilton Budapest, Hess A Ter 1 3, Budapest, Hungary, H 1014;Public; | Pagamento na saída | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-267
  Scenario Outline: TA-267 - Booking Flow - BR - Sabre - Booking.com
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS   | PNR    | TestCaseName                                     | check-In | check-Out | HotelName                                                                             | PaymentMode        | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Sabre | POIBCU | TA-267 - Booking Flow - BR - Sabre - Booking.com |       90 |        91 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | Pagamento na saída | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-268
  Scenario Outline: TA-268 - Booking Flow - BR - Sabre - Expedia
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS   | PNR    | TestCaseName                                 | check-In | check-Out | HotelName                                                                                                                                                                                                                                                                                                             | PaymentMode        | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Sabre | POIBCU | TA-268 - Booking Flow - BR - Sabre - Expedia |       90 |        91 | Jurys Inn Liverpool, 31 Keel Wharf, Liverpool, Merseyside, United Kingdom, L3 4fn;Hampton by Hilton Liverpool City Centre, Kings Dock Mill 7 Hurst Street, Liverpool, Merseyside, United Kingdom, L1 8da;Holiday Inn City Centre Liverpool, Lime Street, Liverpool, Merseyside, United Kingdom, L1 1nq;Aggregator;EAN | Pagamento na saída | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-269
  Scenario Outline: TA-269 - Booking Flow - BR - Sabre - On Request
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    When select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to onrequestffcPage
    #When user click on ContactInfo and NotificationEmail option on onrequestffcPage
    When user click on FulfillNow button on onrequestffcPage
    And user select the RoomDescription "<RoomDescription>" on onrequestffcPage
    And user select the RateDescription "<RateDescription>" on onrequestffcPage
    And click on CommissionableRadioBtn on onrequestffcPage
    And eneter the CommissionAmount "<CommissionAmount>" on onrequestffcPage
    And enter the RatePerDay "<RatePerDay>" on onrequestffcPage
    And user select the MealPlan "<MealPlan>" on onrequestffcPage
    And enter the BreakfastAmount "<BreakfastAmount>" on onrequestffcPage
    And user select the BreakfastAvailability "<BreakfastAvailability>" on onrequestffcPage
    And enter the ConfirmationNum "<ConfirmationNum>" on onrequestffcPage
    And user select the PaymentMode "<PaymentMode>" on onrequestffcPage
    And select the PaymentType "<PaymentType>" on onrequestffcPage
    And user select the BookingSource "<BookingSource>" on onrequestffcPage
    And select the HotelCommunication "<HotelCommunication>" on onrequestffcPage
    And user select the ReasonForOnRequestDdl "<ReasonForOnRequestDdl>" on onrequestffcPage
    And user select the ReasonForOnRequestTxtBox "<ReasonForOnRequestTxtBox>" on onrequestffcPage
    And click on ConfirmBooking Button on onrequestffcPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user enter CancellationRefNum "<CancellationRefNum>" on CancelBooking Page
    And user enter CancellationFees "<CancellationFees>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS   | PNR    | TestCaseName                                    | check-In | check-Out | HotelName                                                                                                                                                                                                      | RoomDescription | RateDescription          | CommissionAmount | RatePerDay | MealPlan         | BreakfastAmount | BreakfastAvailability | ConfirmationNum | PaymentMode        | PaymentType                         | BookingSource | HotelCommunication | ReasonForOnRequestDdl | ReasonForOnRequestTxtBox | HotelCommunicationCancel | CancellationRefNum | CancellationFees |
      | Sabre | POIBCU | TA-269 - Booking Flow - BR - Sabre - On Request |       90 |        91 | METROPOLITAN HOTEL VANCOUVER, 645 HOWE STREET, VANCOUVER, BRITISH COLUMBIA, CANADA, V6C 2Y9;Park Hyatt Chicago;EXECUTIVE LE SOLEIL, 567 HORNBY STREET, VANCOUVER, BRITISH COLUMBIA, CANADA, V6C 2E8;OnRequest; | Single Room     | RAC for all Public rates |               20 |        100 | Buffet Breakfast |              10 | Exclusive             |            1234 | Pagamento na saída | Pay on departure - Visa ending 0002 | On-Request    | No                 | Other                 | Test Booking             | No                       |               1234 |                0 |

  @TA-270
  Scenario Outline: TA-270 - Modification Flow - BR - Sabre - RoomIt rates
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Modify button on BookingConfirmationPage
    Then user should redirect to ModifyBooking Page
    And user click on ModifyCheckInAndCheckOut link on ModifyBooking Page
    And user change the Check-In and Check-Out Date on ModifyBooking Page
    And user select the rate "<rate>" on ModifyBooking Page
    And select the HotelCommunication "<HotelCommunicationModify>" on ModifyBooking Page
    And user click on ModifyBooking button
    Then user should redirect to BookingConfirmationPage
    Then Booking should be created successfully
    And user verify the error message on BookingConfirmationPage
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS   | PNR    | TestCaseName                                           | check-In | check-Out | HotelName                                                                                                                                                                                                                                                                                         | PaymentMode        | PaymentType                         | HotelCommunication | rate              | HotelCommunicationModify | HotelCommunicationCancel |
      | Sabre | POIBCU | TA-270 - Modification Flow - BR - Sabre - RoomIt rates |       90 |        91 | NH GENEVA AIRPORT, AVENUE DE MATEGNIN 21, GENEVA, SWITZERLAND, 1217;Holiday Inn Express Washington Dc East, 5001 Mercedes Boulevard, Camp Springs, Maryland, United States, 20746;Hampton Inn and Suites Camp Springs, 5000 Mercedes Boulevard, Camp Springs, Maryland, United States, 20746;CWV; | Pagamento na saída | Pay on departure - Visa ending 0002 | No                 | RoomIt rates;CWV; | No                       | No                       |

  @TA-271
  Scenario Outline: TA-271 - Modification Flow - BR - Sabre - Booking.com
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Modify button on BookingConfirmationPage
    Then user should redirect to ModifyBooking Page
    And user click on ModifyCheckInAndCheckOut link on ModifyBooking Page
    And user change the Check-In and Check-Out Date on ModifyBooking Page
    And user select the rate "<rate>" on ModifyBooking Page
    And select the HotelCommunication "<HotelCommunicationModify>" on ModifyBooking Page
    And user click on ModifyBooking button
    Then user should redirect to BookingConfirmationPage
    Then Booking should be created successfully
    And user verify the error message on BookingConfirmationPage
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS   | PNR    | TestCaseName                                          | check-In | check-Out | HotelName                                                                             | PaymentMode        | PaymentType                         | HotelCommunication | rate          | HotelCommunicationModify | HotelCommunicationCancel |
      | Sabre | POIBCU | TA-271 - Modification Flow - BR - Sabre - Booking.com |       89 |        90 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | Pagamento na saída | Pay on departure - Visa ending 0002 | No                 | Aggregator;BC | No                       | No                       |

  @TA-254
  Scenario Outline: TA- 254 - Booking Flow - CH - Galileo - Expedia
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                    | check-In | check-Out | HotelName                                                                                                                                                                                                                                                                                              | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Galileo | 7HQTKE | TA- 254 - Booking Flow - CH - Galileo - Expedia |       90 |        91 | Crowne Plaza Johannesburg The Rosebank, Cnr Tyrwhitt and Sturdee Ave, Rosebank, Johannesburg, South Africa, 2132;Holiday Inn Genoa City, Via Milano 47, Genova, Italy, 16126;Intercontinental Johannesburg, Corner Of Maude and 5th Street, P O Box 784902, Sandton, South Africa, 2146;Aggregator;EAN | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-251
  Scenario Outline: TA-251 - Booking Flow - CH - Galileo - RoomIt rates
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                        | check-In | check-Out | HotelName                                                                                                                                                                                                                                                                                                           | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Galileo | 7HQTKE | TA-251 - Booking Flow - CH - Galileo - RoomIt rates |       90 |        91 | Country Inn and Suites Orlando Airport, 5440 Forbes Place, Orlando, Florida, United States, 32812;Doubletree by Hilton Orlando Airport, 5555 Hazeltine National Drive, Orlando, Florida, United States, 32812;Hilton Garden Inn Orlando Arpt, 7300 Augusta National Dr, Orlando, Florida, United States, 32822;CWV; | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-252
  Scenario Outline: TA- 252 - Booking Flow - CH - Galileo - Public Rate
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                        | check-In | check-Out | HotelName                                                                                                                                                                                                                                                    | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Galileo | 7HQTKE | TA- 252 - Booking Flow - CH - Galileo - Public Rate |       90 |        91 | MELIA BRASIL 21, SHS QUADRA 6 BLOCOS B D F, ASA SUL, BRASILIA, BRAZIL, 74316 000;HAMPTON INN AND SUITES MEXICO CITY, CALLE 5 DE FEBRERO NO 24, COLONIA CENTRO, MEXICO CITY, MEXICO, 06060;Hilton Budapest, Hess A Ter 1 3, Budapest, Hungary, H 1014;Public; | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-255
  Scenario Outline: TA- 255 - Booking Flow - CH - Galileo - On Request
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    When select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to onrequestffcPage
    #When user click on ContactInfo and NotificationEmail option on onrequestffcPage
    When user click on FulfillNow button on onrequestffcPage
    And user select the RoomDescription "<RoomDescription>" on onrequestffcPage
    And user select the RateDescription "<RateDescription>" on onrequestffcPage
    And click on CommissionableRadioBtn on onrequestffcPage
    And eneter the CommissionAmount "<CommissionAmount>" on onrequestffcPage
    And enter the RatePerDay "<RatePerDay>" on onrequestffcPage
    And user select the MealPlan "<MealPlan>" on onrequestffcPage
    And enter the BreakfastAmount "<BreakfastAmount>" on onrequestffcPage
    And user select the BreakfastAvailability "<BreakfastAvailability>" on onrequestffcPage
    And enter the ConfirmationNum "<ConfirmationNum>" on onrequestffcPage
    And user select the PaymentMode "<PaymentMode>" on onrequestffcPage
    And select the PaymentType "<PaymentType>" on onrequestffcPage
    And user select the BookingSource "<BookingSource>" on onrequestffcPage
    And select the HotelCommunication "<HotelCommunication>" on onrequestffcPage
    And user select the ReasonForOnRequestDdl "<ReasonForOnRequestDdl>" on onrequestffcPage
    And user select the ReasonForOnRequestTxtBox "<ReasonForOnRequestTxtBox>" on onrequestffcPage
    And click on ConfirmBooking Button on onrequestffcPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And select the ReasonForNotSending "<ReasonForNotSendingCancelValue>" on CancelBooking Page
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingCancelReasonValue>" on CancelBooking Page
    And user enter CancellationRefNum "<CancellationRefNum>" on CancelBooking Page
    And user enter CancellationFees "<CancellationFees>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                       | check-In | check-Out | HotelName                                                                                                                                                                                                      | RoomDescription | RateDescription          | CommissionAmount | RatePerDay | MealPlan         | BreakfastAmount | BreakfastAvailability | ConfirmationNum | PaymentMode      | PaymentType                         | BookingSource | HotelCommunication | ReasonForOnRequestDdl | ReasonForOnRequestTxtBox | HotelCommunicationCancel | ReasonForNotSendingCancelValue | ReasonForNotSendingCancelReasonValue | CancellationRefNum | CancellationFees |
      | Galileo | 7HQTKE | TA- 255 - Booking Flow - CH - Galileo - On Request |       90 |        91 | METROPOLITAN HOTEL VANCOUVER, 645 HOWE STREET, VANCOUVER, BRITISH COLUMBIA, CANADA, V6C 2Y9;Park Hyatt Chicago;EXECUTIVE LE SOLEIL, 567 HORNBY STREET, VANCOUVER, BRITISH COLUMBIA, CANADA, V6C 2E8;OnRequest; | Single Room     | RAC for all Public rates |               20 |        100 | Buffet Breakfast |              10 | Exclusive             |            1234 | Pay on departure | Pay on departure - Visa ending 0002 | On-Request    | No                 | Other                 | Test Booking             | No                       | Other                          | Test Booking                         |               1234 |                0 |

  @TA-253
  Scenario Outline: TA-253 - Booking Flow - CH - Galileo - Booking.com
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                       | check-In | check-Out | HotelName                                                                             | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Galileo | 7HQTKE | TA-253 - Booking Flow - CH - Galileo - Booking.com |       90 |        91 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-256
  Scenario Outline: TA-256 - Modification Flow - CH - Galileo - RoomIt rates
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Modify button on BookingConfirmationPage
    Then user should redirect to ModifyBooking Page
    And user click on ModifyCheckInAndCheckOut link on ModifyBooking Page
    And user change the Check-In and Check-Out Date on ModifyBooking Page
    And user select the rate "<rate>" on ModifyBooking Page
    And select the HotelCommunication "<HotelCommunicationModify>" on ModifyBooking Page
    And user click on ModifyBooking button
    Then user should redirect to BookingConfirmationPage
    Then Booking should be created successfully
    And user verify the error message on BookingConfirmationPage
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                             | check-In | check-Out | HotelName                                                                                                                                                                                                                                                                                               | PaymentMode      | PaymentType                         | HotelCommunication | rate              | HotelCommunicationModify | HotelCommunicationCancel |
      | Galileo | 7HQTKE | TA-256 - Modification Flow - CH - Galileo - RoomIt rates |       90 |        91 | Country Inn and Suites Orlando Airport, 5440 Forbes Place, Orlando, Florida, United States, 32812;Radisson Blu Gautrain Sandton, Corner Of Rivonia Rd and West, Wes Sandton, Johannesburg, South Africa, 2196;Radisson Blu Resort Galzignano, Viale Delle Terme 84, Galzignano Terme, Italy, 35030;CWV; | Pay on departure | Pay on departure - Visa ending 0002 | No                 | RoomIt rates;CWV; | No                       | No                       |

  @TA-257
  Scenario Outline: TA-257 - Modification Flow - CH - Galileo - Booking.com
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Modify button on BookingConfirmationPage
    Then user should redirect to ModifyBooking Page
    And user click on ModifyCheckInAndCheckOut link on ModifyBooking Page
    And user change the Check-In and Check-Out Date on ModifyBooking Page
    And user select the rate "<rate>" on ModifyBooking Page
    And select the HotelCommunication "<HotelCommunicationModify>" on ModifyBooking Page
    And user click on ModifyBooking button
    Then user should redirect to BookingConfirmationPage
    Then Booking should be created successfully
    And user verify the error message on BookingConfirmationPage
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                            | check-In | check-Out | HotelName                                                                             | PaymentMode      | PaymentType                         | HotelCommunication | rate          | HotelCommunicationModify | HotelCommunicationCancel |
      | Galileo | 7HQTKE | TA-257 - Modification Flow - CH - Galileo - Booking.com |       89 |        90 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | Pay on departure | Pay on departure - Visa ending 0002 | No                 | Aggregator;BC | No                       | No                       |

  @TA-272
  Scenario Outline: TA-272 - Booking Flow - SE - Amadeus - RoomIt rates
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                        | check-In | check-Out | HotelName                                                                                                                                                                                                                                                                                        | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Amadeus | KWVUKV | TA-272 - Booking Flow - SE - Amadeus - RoomIt rates |       90 |        91 | NH GENEVA AIRPORT, AVENUE DE MATEGNIN 21, GENEVA, SWITZERLAND, 1217;Crowne Plaza John Lennon Arpt, Liverpool Airport, Speke Aerodrome, Liverpool, Merseyside, United Kingdom, L24 8qd;Holiday Inn Express Stockport, 11 Station Road, Stockport, Greater Manchester, United Kingdom, Sk39jd;CWV; | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-275
  Scenario Outline: TA-275 - Booking Flow - SE - Amadeus - Expedia
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                   | check-In | check-Out | HotelName                                                                                                                                                                                                                                                                               | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Amadeus | KWVUKV | TA-275 - Booking Flow - SE - Amadeus - Expedia |       90 |        91 | Bredbury Hall Hotel, Osborne Street Goyt Valley, Bredbury, Stockport, Greater Manchester, United Kingdom, Sk6 2dh;Rocco Forte Lowry Hotel, 50 Dearmans Place, Manchester, Greater Manchester, United Kingdom, M3 5lh;Hilton Gdansk, Targ Rybny 1, Gdansk, Poland, 80-838;Aggregator;EAN | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-273
  Scenario Outline: TA-273 - Booking Flow - SE - Amadeus - Public Rate
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                       | check-In | check-Out | HotelName                                                                                                                                                                                                                                                    | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Amadeus | KWVUKV | TA-273 - Booking Flow - SE - Amadeus - Public Rate |       90 |        91 | MELIA BRASIL 21, SHS QUADRA 6 BLOCOS B D F, ASA SUL, BRASILIA, BRAZIL, 74316 000;HAMPTON INN AND SUITES MEXICO CITY, CALLE 5 DE FEBRERO NO 24, COLONIA CENTRO, MEXICO CITY, MEXICO, 06060;Hilton Budapest, Hess A Ter 1 3, Budapest, Hungary, H 1014;Public; | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-274
  Scenario Outline: TA-274 - Booking Flow - SE - Amadeus - Booking.com
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                       | check-In | check-Out | HotelName                                                                             | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Amadeus | KWVUKV | TA-274 - Booking Flow - SE - Amadeus - Booking.com |       90 |        91 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-276
  Scenario Outline: TA-276 - Booking Flow - SE - Amadeus - On Request
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    When select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to onrequestffcPage
    #When user click on ContactInfo and NotificationEmail option on onrequestffcPage
    When user click on FulfillNow button on onrequestffcPage
    And user select the RoomDescription "<RoomDescription>" on onrequestffcPage
    And user select the RateDescription "<RateDescription>" on onrequestffcPage
    And click on CommissionableRadioBtn on onrequestffcPage
    And eneter the CommissionAmount "<CommissionAmount>" on onrequestffcPage
    And enter the RatePerDay "<RatePerDay>" on onrequestffcPage
    And user select the MealPlan "<MealPlan>" on onrequestffcPage
    And enter the BreakfastAmount "<BreakfastAmount>" on onrequestffcPage
    And user select the BreakfastAvailability "<BreakfastAvailability>" on onrequestffcPage
    And enter the ConfirmationNum "<ConfirmationNum>" on onrequestffcPage
    And user select the PaymentMode "<PaymentMode>" on onrequestffcPage
    And select the PaymentType "<PaymentType>" on onrequestffcPage
    And user select the BookingSource "<BookingSource>" on onrequestffcPage
    And select the HotelCommunication "<HotelCommunication>" on onrequestffcPage
    And user select the ReasonForOnRequestDdl "<ReasonForOnRequestDdl>" on onrequestffcPage
    And user select the ReasonForOnRequestTxtBox "<ReasonForOnRequestTxtBox>" on onrequestffcPage
    And click on ConfirmBooking Button on onrequestffcPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user enter CancellationRefNum "<CancellationRefNum>" on CancelBooking Page
    And user enter CancellationFees "<CancellationFees>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                      | check-In | check-Out | HotelName                                                                                                                                                                                                                                                                           | RoomDescription | RateDescription          | CommissionAmount | RatePerDay | MealPlan         | BreakfastAmount | BreakfastAvailability | ConfirmationNum | PaymentMode      | PaymentType                         | BookingSource | HotelCommunication | ReasonForOnRequestDdl | ReasonForOnRequestTxtBox | HotelCommunicationCancel | CancellationRefNum | CancellationFees |
      | Amadeus | KWVUKV | TA-276 - Booking Flow - SE - Amadeus - On Request |       90 |        91 | Bredbury Hall Hotel, Osborne Street Goyt Valley, Bredbury, Stockport, Greater Manchester, United Kingdom, Sk6 2dh;Rocco Forte Lowry Hotel, 50 Dearmans Place, Manchester, Greater Manchester, United Kingdom, M3 5lh;Hilton Gdansk, Targ Rybny 1, Gdansk, Poland, 80-838;OnRequest; | Single Room     | RAC for all Public rates |               20 |        100 | Buffet Breakfast |              10 | Exclusive             |            1234 | Pay on departure | Pay on departure - Visa ending 0002 | On-Request    | No                 | Other                 | Test Booking             | No                       |               1234 |                0 |

  @TA-277
  Scenario Outline: TA-277 - Modification Flow - SE - Amadeus - RoomIt rates
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Modify button on BookingConfirmationPage
    Then user should redirect to ModifyBooking Page
    And user click on ModifyCheckInAndCheckOut link on ModifyBooking Page
    And user change the Check-In and Check-Out Date on ModifyBooking Page
    And user select the rate "<rate>" on ModifyBooking Page
    And select the HotelCommunication "<HotelCommunicationModify>" on ModifyBooking Page
    And user click on ModifyBooking button
    Then user should redirect to BookingConfirmationPage
    Then Booking should be created successfully
    And user verify the error message on BookingConfirmationPage
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                             | check-In | check-Out | HotelName                                                                                                                                                                                                                                                                                               | PaymentMode      | PaymentType                         | HotelCommunication | rate              | HotelCommunicationModify | HotelCommunicationCancel |
      | Amadeus | KWVUKV | TA-277 - Modification Flow - SE - Amadeus - RoomIt rates |       90 |        91 | Country Inn and Suites Orlando Airport, 5440 Forbes Place, Orlando, Florida, United States, 32812;Radisson Blu Gautrain Sandton, Corner Of Rivonia Rd and West, Wes Sandton, Johannesburg, South Africa, 2196;Radisson Blu Resort Galzignano, Viale Delle Terme 84, Galzignano Terme, Italy, 35030;CWV; | Pay on departure | Pay on departure - Visa ending 0002 | No                 | RoomIt rates;CWV; | No                       | No                       |

  @TA-278
  Scenario Outline: TA- 278 - Modification Flow -SE - Amadeus - Booking.com
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Modify button on BookingConfirmationPage
    Then user should redirect to ModifyBooking Page
    And user click on ModifyCheckInAndCheckOut link on ModifyBooking Page
    And user change the Check-In and Check-Out Date on ModifyBooking Page
    And user select the rate "<rate>" on ModifyBooking Page
    And select the HotelCommunication "<HotelCommunicationModify>" on ModifyBooking Page
    And user click on ModifyBooking button
    Then user should redirect to BookingConfirmationPage
    Then Booking should be created successfully
    And user verify the error message on BookingConfirmationPage
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                            | check-In | check-Out | HotelName                                                                             | PaymentMode      | PaymentType                         | HotelCommunication | rate          | HotelCommunicationModify | HotelCommunicationCancel |
      | Amadeus | KWVUKV | TA- 278 - Modification Flow -SE - Amadeus - Booking.com |       89 |        90 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | Pay on departure | Pay on departure - Visa ending 0002 | No                 | Aggregator;BC | No                       | No                       |

  @TA-188
  Scenario Outline: TA-188 - Booking Flow - DE - Amadeus - Public Rate
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                       | check-In | check-Out | HotelName                                                                                                                                                                                                                                                    | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Amadeus | QBPXJ5 | TA-188 - Booking Flow - DE - Amadeus - Public Rate |       90 |        91 | MELIA BRASIL 21, SHS QUADRA 6 BLOCOS B D F, ASA SUL, BRASILIA, BRAZIL, 74316 000;HAMPTON INN AND SUITES MEXICO CITY, CALLE 5 DE FEBRERO NO 24, COLONIA CENTRO, MEXICO CITY, MEXICO, 06060;Hilton Budapest, Hess A Ter 1 3, Budapest, Hungary, H 1014;Public; | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-189
  Scenario Outline: TA-189 - Booking Flow - DE - Amadeus - Booking.com
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                       | check-In | check-Out | HotelName                                                                             | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Amadeus | QBPXJ5 | TA-189 - Booking Flow - DE - Amadeus - Booking.com |       90 |        91 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-187
  Scenario Outline: TA-187 - Booking Flow - DE - Amadeus - RoomIt rates
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                        | check-In | check-Out | HotelName                                                                                                                                                                                                                                         | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Amadeus | QBPXJ5 | TA-187 - Booking Flow - DE - Amadeus - RoomIt rates |       90 |        91 | PARK HYATT DUBAI, PO BOX 2822, DUBAI, UNITED ARAB EMIRATES;Best Western Plus Grand Victor Hugo, 3 Avenue Victor Hugo, Luxembourg, Luxembourg, L1750;Best Western Euro Hotel Luxembourg, 11 Route De Luxembourg, Gonderange, Luxembourg, 6182;CWV; | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-190
  Scenario Outline: TA-190 - Booking Flow - DE - Amadeus - Expedia
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                   | check-In | check-Out | HotelName                                                                                                                                                                                                                                                                                         | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Amadeus | PESXIA | TA-190 - Booking Flow - DE - Amadeus - Expedia |       90 |        91 | Comfort Inn Cancun Aeropuerto, Carretera Cancun Aeropuerto, Ma4 L5 Sm 301, Cancun, Mexico, 77500;BW Plus French Quarter, 920 N Rampart St, New Orleans, Louisiana, United States, 70116;Hampton Inn by Hilton Cancun Cumbres, Blvd Luis Donaldo Colosio Mza, Cancun, Mexico, 77500;Aggregator;EAN | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |



 @TA-191
  Scenario Outline: TA-191 - Booking Flow - DE - Amadeus - On Request
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    When select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to onrequestffcPage
    #When user click on ContactInfo and NotificationEmail option on onrequestffcPage
    When user click on FulfillNow button on onrequestffcPage
    And user select the RoomDescription "<RoomDescription>" on onrequestffcPage
    And user select the RateDescription "<RateDescription>" on onrequestffcPage
    And click on CommissionableRadioBtn on onrequestffcPage
    And eneter the CommissionAmount "<CommissionAmount>" on onrequestffcPage
    And enter the RatePerDay "<RatePerDay>" on onrequestffcPage
    And user select the MealPlan "<MealPlan>" on onrequestffcPage
    And enter the BreakfastAmount "<BreakfastAmount>" on onrequestffcPage
    And user select the BreakfastAvailability "<BreakfastAvailability>" on onrequestffcPage
    And enter the ConfirmationNum "<ConfirmationNum>" on onrequestffcPage
    And user select the PaymentMode "<PaymentMode>" on onrequestffcPage
    And select the PaymentType "<PaymentType>" on onrequestffcPage
    And user select the BookingSource "<BookingSource>" on onrequestffcPage
    And select the HotelCommunication "<HotelCommunication>" on onrequestffcPage
    And select the ReasonForNotSending "<ReasonForNotSendingValueOnRequestPage>" on onrequestffcPage
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingReasonValueOnRequestPage>" on onrequestffcPage
    And user select the ReasonForOnRequestDdl "<ReasonForOnRequestDdl>" on onrequestffcPage
    And user select the ReasonForOnRequestTxtBox "<ReasonForOnRequestTxtBox>" on onrequestffcPage
    And click on ConfirmBooking Button on onrequestffcPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And select the ReasonForNotSending "<ReasonForNotSendingCancelValue>" on CancelBooking Page
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingCancelReasonValue>" on CancelBooking Page
    And user enter CancellationRefNum "<CancellationRefNum>" on CancelBooking Page
    And user enter CancellationFees "<CancellationFees>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                      | check-In | check-Out | HotelName                                                                                                                                                                                                              | RoomDescription | RateDescription          | CommissionAmount | RatePerDay | MealPlan         | BreakfastAmount | BreakfastAvailability | ConfirmationNum | PaymentMode      | PaymentType                         | BookingSource | HotelCommunication | ReasonForNotSendingValueOnRequestPage | ReasonForNotSendingReasonValueOnRequestPage | ReasonForOnRequestDdl | ReasonForOnRequestTxtBox | HotelCommunicationCancel | ReasonForNotSendingCancelValue | ReasonForNotSendingCancelReasonValue | CancellationRefNum | CancellationFees |
      | Amadeus | PESXIA | TA-191 - Booking Flow - DE - Amadeus - On Request |       90 |        91 | HYATT REGENCY TOKYO, 2-7-2 NISHI-SHINJUKU, TOKYO, JAPAN, 160-0023;WALDORF ASTORIA BEIJING, 5 15 JINYU HUTONG, BEIJING, CHINA, 100006;GRAND HYATT BEIJING, NO 1 EAST CHANG AN AVENUE, BEIJING, CHINA, 100738;OnRequest; | Single Room     | RAC for all Public rates |               20 |        100 | Buffet Breakfast |              10 | Exclusive             |            1234 | Pay on departure | Pay on departure - Visa ending 0002 | On-Request    | No                 | Other                                 | Test Booking                                | Other                 | Test Booking             | No                       | Other                          | Test Booking                         |               1234 |                0 |
      
      
      
      @TA-192
  Scenario Outline: TA-192 - Modification Flow - DE - Amadeus - RoomIt rates
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Modify button on BookingConfirmationPage
    Then user should redirect to ModifyBooking Page
    And user click on ModifyCheckInAndCheckOut link on ModifyBooking Page
    And user change the Check-In and Check-Out Date on ModifyBooking Page
    And user select the rate "<rate>" on ModifyBooking Page
    And select the HotelCommunication "<HotelCommunicationModify>" on ModifyBooking Page
    And user click on ModifyBooking button
    Then user should redirect to BookingConfirmationPage
    Then Booking should be created successfully
    And user verify the error message on BookingConfirmationPage
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                             | check-In | check-Out | HotelName                                                                                                                                                                                                                                                                                               | PaymentMode      | PaymentType                         | HotelCommunication | rate              | HotelCommunicationModify | HotelCommunicationCancel |
      | Amadeus | QBPXJ5 | TA-192 - Modification Flow - DE - Amadeus - RoomIt rates |       90 |        91 | ORYX ROTANA, AL NAHDA SCHOOL STREET, DOHA, QATAR, 29922;Crowne Plaza John Lennon Arpt, Liverpool Airport, Speke Aerodrome, Liverpool, Merseyside, United Kingdom, L24 8qd;Holiday Inn Express Stockport, 11 Station Road, Stockport, Greater Manchester, United Kingdom, Sk39jd;CWV; | Pay on departure | Pay on departure - Visa ending 0002 | No                 | RoomIt rates;CWV; | No                       | No                       |
      
      
      
      @TA-193
  Scenario Outline: TA-193 - Modification Flow - DE - Amadeus - Booking.com
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Modify button on BookingConfirmationPage
    Then user should redirect to ModifyBooking Page
    And user click on ModifyCheckInAndCheckOut link on ModifyBooking Page
    And user change the Check-In and Check-Out Date on ModifyBooking Page
    And user select the rate "<rate>" on ModifyBooking Page
    And select the HotelCommunication "<HotelCommunicationModify>" on ModifyBooking Page
    And user click on ModifyBooking button
    Then user should redirect to BookingConfirmationPage
    Then Booking should be created successfully
    And user verify the error message on BookingConfirmationPage
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                            | check-In | check-Out | HotelName                                                                             | PaymentMode      | PaymentType                         | HotelCommunication | rate          | HotelCommunicationModify | HotelCommunicationCancel |
      | Amadeus | QBPXJ5 | TA-193 - Modification Flow - DE - Amadeus - Booking.com |       89 |        90 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | Pay on departure | Pay on departure - Visa ending 0002 | No                 | Aggregator;BC | No                       | No                       |
      
      
       @TA-1310
  Scenario Outline: TA-1310 - Booking Flow - BG - Amadeus - RoomIt rates
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                        | check-In | check-Out | HotelName                                                                                                                                                                                                                                         | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Amadeus | Q7J26C | TA-1310 - Booking Flow - BG - Amadeus - RoomIt rates |       90 |        91 | Radisson New Rochelle New York;Radisson Blu Gautrain Sandton, Corner Of Rivonia Rd and West, Wes Sandton, Johannesburg, South Africa, 2196;Radisson Blu Resort Galzignano, Viale Delle Terme 84, Galzignano Terme, Italy, 35030;CWV; | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |
      
      
      
      @TA-1311
  Scenario Outline: TA-1311 - Modification Flow - BG - Amadeus - RoomIt rates modification
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Modify button on BookingConfirmationPage
    Then user should redirect to ModifyBooking Page
    And user click on ModifyCheckInAndCheckOut link on ModifyBooking Page
    And user change the Check-In and Check-Out Date on ModifyBooking Page
    And user select the rate "<rate>" on ModifyBooking Page
    And select the HotelCommunication "<HotelCommunicationModify>" on ModifyBooking Page
    And user click on ModifyBooking button
    Then user should redirect to BookingConfirmationPage
    Then Booking should be created successfully
    And user verify the error message on BookingConfirmationPage
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                             | check-In | check-Out | HotelName                                                                                                                                                                                                                                                                                               | PaymentMode      | PaymentType                         | HotelCommunication | rate              | HotelCommunicationModify | HotelCommunicationCancel |
      | Amadeus | Q7J26C | TA-1311 - Modification Flow - BG - Amadeus - RoomIt rates modification |       90 |        91 | Radisson New Rochelle New York;Crowne Plaza John Lennon Arpt, Liverpool Airport, Speke Aerodrome, Liverpool, Merseyside, United Kingdom, L24 8qd;Holiday Inn Express Stockport, 11 Station Road, Stockport, Greater Manchester, United Kingdom, Sk39jd;CWV; | Pay on departure | Pay on departure - Visa ending 0002 | No                 | RoomIt rates;CWV; | No                       | No                       |
      
      
      
      @TA-237
  Scenario Outline: TA-237 - Booking Flow - IN - Galileo - RoomIt rates
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select MissedSavingCode "<MissedSavingsCode>"
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS   | PNR    | TestCaseName                                      | check-In | check-Out | HotelName                                                                                                                                                                                                               | MissedSavingsCode | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Galileo | T992T4 | TA-237 - Booking Flow - IN - Galileo - RoomIt rates |       90 |        91 | RADISSON BLU DOHA, SALWA ROAD INTERSECTION OF C R, DOHA, DOHA, QATAR;Park Inn by Radisson Kyiv Troyitska, 55 Velyka Street, Kiev, Ukraine, 03150;Radisson Blu Kiev, Yaroslaviv Val Street 22, Kiev, Ukraine, 01034;CWV; | B - Personal Preference | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |
      
     
     
     
     @TA-1457-Amadeus
  Scenario Outline: TA - 1457 - Booking Flow - PL - Amadeus - RoomIt rates
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS   | PNR    | TestCaseName                                    | check-In | check-Out | HotelName                                                                                                                                                                                               | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Amadeus | NZFRS5 | TA - 1457 - Booking Flow - PL - Amadeus - RoomIt rates |       90 |        91 | GRAND HYATT ISTANBUL, TASKISLA CAD, ISTANBUL, TURKEY, 34437;Radisson Blu Ankara, Istiklal Cad No 20 Ulus, Ankara, Turkey, 06030;Best Western Euro Hotel Luxembourg, 11 Route De Luxembourg, Gonderange, Luxembourg, 6182;CWV; | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |
      
      
      @TA-1457-Sabre
  Scenario Outline: TA - 1457 - Booking Flow - PL - Sabre - RoomIt rates
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS   | PNR    | TestCaseName                                    | check-In | check-Out | HotelName                                                                                                                                                                                               | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Sabre | BVTSSX | TA - 1457 - Booking Flow - PL - Sabre - RoomIt rates |       90 |        91 | GRAND HYATT ISTANBUL, TASKISLA CAD, ISTANBUL, TURKEY, 34437;Radisson Blu Ankara, Istiklal Cad No 20 Ulus, Ankara, Turkey, 06030;Best Western Euro Hotel Luxembourg, 11 Route De Luxembourg, Gonderange, Luxembourg, 6182;CWV; | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |
      
      
      
      @TA-1458-Amadeus
 Scenario Outline: TA - 1458 - Modification Flow - PL - Amadeus - RoomIt rates modification
   Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
   When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
   And select the "<check-In>" and "<check-Out>" on HotelSearchPage
   And select the hotel "<HotelName>" and rate on HotelSearchPage
   Then user should redirect to SelectTravelerPage
   #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
   And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
   And select the PaymentType "<PaymentType>" on SelectTravelerPage
   And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
   And click on ConfirmBooking Button on SelectTravelerPage
   Then user should redirect to BookingConfirmationPage
   And Booking should be created successfully
   When user click on ViewBooking button on BookingConfirmationPage
   And user click on Modify button on BookingConfirmationPage
   Then user should redirect to ModifyBooking Page
   And user click on ModifyCheckInAndCheckOut link on ModifyBooking Page
   And user change the Check-In and Check-Out Date on ModifyBooking Page
   And user select the rate "<rate>" on ModifyBooking Page
   And select the HotelCommunication "<HotelCommunicationModify>" on ModifyBooking Page
   And user click on ModifyBooking button
   Then user should redirect to BookingConfirmationPage
   Then Booking should be created successfully
   And user verify the error message on BookingConfirmationPage
   When user click on ViewBooking button on BookingConfirmationPage
   And user click on Cancel button on BookingConfirmationPage
   Then user should redirect to CancelBooking Page
   When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
   And user click on ContinueBooking button on CancelBooking Page
   Then user should redirect to BookingConfirmationPage
   And Booking should be cancelled successfully

   Examples: 
      | GDS     | PNR    | TestCaseName                                             | check-In | check-Out | HotelName                                                                                                                                                                                                                                                                                               | PaymentMode      | PaymentType                         | HotelCommunication | rate              | HotelCommunicationModify | HotelCommunicationCancel |
      | Amadeus | NZFRS5 | TA - 1458 - Modification Flow - PL - Amadeus - RoomIt rates modification |       90 |        91 | Park Hyatt Chicago;Radisson Blu Ankara, Istiklal Cad No 20 Ulus, Ankara, Turkey, 06030;Best Western Euro Hotel Luxembourg, 11 Route De Luxembourg, Gonderange, Luxembourg, 6182;CWV; | Pay on departure | Pay on departure - Visa ending 0002 | No                 | RoomIt rates;CWV; | No                       | No                       |
      
      
      
       @TA-1458-Sabre
 Scenario Outline: TA - 1458 - Modification Flow - PL - Sabre - RoomIt rates modification
   Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
   When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
   And select the "<check-In>" and "<check-Out>" on HotelSearchPage
   And select the hotel "<HotelName>" and rate on HotelSearchPage
   Then user should redirect to SelectTravelerPage
   When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
   And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
   And select the PaymentType "<PaymentType>" on SelectTravelerPage
   And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
   And click on ConfirmBooking Button on SelectTravelerPage
   Then user should redirect to BookingConfirmationPage
   And Booking should be created successfully
   When user click on ViewBooking button on BookingConfirmationPage
   And user click on Modify button on BookingConfirmationPage
   Then user should redirect to ModifyBooking Page
   And user click on ModifyCheckInAndCheckOut link on ModifyBooking Page
   And user change the Check-In and Check-Out Date on ModifyBooking Page
   And user select the rate "<rate>" on ModifyBooking Page
   And select the HotelCommunication "<HotelCommunicationModify>" on ModifyBooking Page
   And user click on ModifyBooking button
   Then user should redirect to BookingConfirmationPage
   Then Booking should be created successfully
   And user verify the error message on BookingConfirmationPage
   When user click on ViewBooking button on BookingConfirmationPage
   And user click on Cancel button on BookingConfirmationPage
   Then user should redirect to CancelBooking Page
   When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
   And user click on ContinueBooking button on CancelBooking Page
   Then user should redirect to BookingConfirmationPage
   And Booking should be cancelled successfully

   Examples: 
      | GDS     | PNR    | TestCaseName                                             | check-In | check-Out | HotelName                                                                                                                                                                                                                                                                                               | PaymentMode      | PaymentType                         | HotelCommunication | rate              | HotelCommunicationModify | HotelCommunicationCancel |
      | Sabre | BVTSSX | TA - 1458 - Modification Flow - PL - Sabre - RoomIt rates modification |       90 |        91 | Park Hyatt Chicago;Radisson Blu Ankara, Istiklal Cad No 20 Ulus, Ankara, Turkey, 06030;Best Western Euro Hotel Luxembourg, 11 Route De Luxembourg, Gonderange, Luxembourg, 6182;CWV; | Pay on departure | Pay on departure - Visa ending 0002 | No                 | RoomIt rates;CWV; | No                       | No                       |

      
      
      @TA-1455
  Scenario Outline: TA-1455 - Booking Flow GSC PL - Sabre - RoomIt rates
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS   | PNR    | TestCaseName                                    | check-In | check-Out | HotelName                                                                                                                                                                                               | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Sabre | ZWSAED | TA-1455 - Booking Flow GSC PL - Sabre - RoomIt rates |       90 |        91 | GRAND HYATT ISTANBUL, TASKISLA CAD, ISTANBUL, TURKEY, 34437;Radisson Blu Ankara, Istiklal Cad No 20 Ulus, Ankara, Turkey, 06030;Best Western Euro Hotel Luxembourg, 11 Route De Luxembourg, Gonderange, Luxembourg, 6182;CWV; | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |
      
      
      
       @TA-1456
 Scenario Outline: TA-1456 - Modification Flow - GSC PL - Sabre - RoomIt rates modification
   Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
   When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
   And select the "<check-In>" and "<check-Out>" on HotelSearchPage
   And select the hotel "<HotelName>" and rate on HotelSearchPage
   Then user should redirect to SelectTravelerPage
   When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
   And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
   And select the PaymentType "<PaymentType>" on SelectTravelerPage
   And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
   And click on ConfirmBooking Button on SelectTravelerPage
   Then user should redirect to BookingConfirmationPage
   And Booking should be created successfully
   When user click on ViewBooking button on BookingConfirmationPage
   And user click on Modify button on BookingConfirmationPage
   Then user should redirect to ModifyBooking Page
   And user click on ModifyCheckInAndCheckOut link on ModifyBooking Page
   And user change the Check-In and Check-Out Date on ModifyBooking Page
   And user select the rate "<rate>" on ModifyBooking Page
   And select the HotelCommunication "<HotelCommunicationModify>" on ModifyBooking Page
   And user click on ModifyBooking button
   Then user should redirect to BookingConfirmationPage
   Then Booking should be created successfully
   And user verify the error message on BookingConfirmationPage
   When user click on ViewBooking button on BookingConfirmationPage
   And user click on Cancel button on BookingConfirmationPage
   Then user should redirect to CancelBooking Page
   When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
   And user click on ContinueBooking button on CancelBooking Page
   Then user should redirect to BookingConfirmationPage
   And Booking should be cancelled successfully

   Examples: 
      | GDS     | PNR    | TestCaseName                                             | check-In | check-Out | HotelName                                                                                                                                                                                                                                                                                               | PaymentMode      | PaymentType                         | HotelCommunication | rate              | HotelCommunicationModify | HotelCommunicationCancel |
      | Sabre | ZWSAED | TA-1456 - Modification Flow - GSC PL - Sabre - RoomIt rates modification |       90 |        91 | Park Hyatt Chicago;Radisson Blu Ankara, Istiklal Cad No 20 Ulus, Ankara, Turkey, 06030;Best Western Euro Hotel Luxembourg, 11 Route De Luxembourg, Gonderange, Luxembourg, 6182;CWV; | Pay on departure | Pay on departure - Visa ending 0002 | No                 | RoomIt rates;CWV; | No                       | No                       |