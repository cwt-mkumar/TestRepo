Feature: Payment Mode D all test cases

  @TA-1
  Scenario Outline: TA-1 - Search Flow - UK - Sabre - Specific Hotel
    Given user is on HotelSearchPage for "<TestCaseName>" and CustomerDetail "<CustomerDetail>>"
    When user select the "<GDS>" and enter the CustomerDetail "<CustomerDetail>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage

    Examples: 
      | GDS   | CustomerDetail | TestCaseName                                     | check-In | check-Out | HotelName                                                                                                                                                                                                                                                                       |
      | Sabre | UK-STAFF TEST  | TA-1 - Search Flow - UK - Sabre - Specific Hotel |       90 |        91 | GRAND MILLENNIUM KUALA LUMPUR, 160 JALAN BUKIT BINTANG, KUALA LUMPUR, MALAYSIA, 55100;Best Western Hotel Royal Centre, Rue Royale 160, Brussels, Belgium, 1000;Citadines St Catherine Bxl, 51 Quai Au Bois A Bruler, Brussels 1000 Capital Region, Brussels, Belgium, 1000;CWV; |

  @TA-2
  Scenario Outline: TA-2 - Search Flow - UK - Sabre - Non Specific Hotel
    Given user is on HotelSearchPage for "<TestCaseName>" and CustomerDetail "<CustomerDetail>>"
    When user select the "<GDS>" and enter the CustomerDetail "<CustomerDetail>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And Enter the "<DestinationName>"
    And you select the first preferred hotel with "<rate>" from the list
    Then user should redirect to SelectTravelerPage

    Examples: 
      | GDS   | CustomerDetail | TestCaseName                                         | check-In | check-Out | DestinationName | rate |
      | Sabre | UK-STAFF TEST  | TA-2 - Search Flow - UK - Sabre - Non Specific Hotel |       90 |        91 | Paris, France   | CWV  |
      
      
    @TA-6
  Scenario Outline: TA-6 - Booking Flow - FR - Amadeus - Non Specific Hotel
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And Enter the "<DestinationName>"
    And you select the first preferred hotel with "<rate>" from the list
    Then user should redirect to SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And select the ReasonForNotSending "<ReasonForNotSendingValue>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And select the ReasonForNotSending "<ReasonForNotSendingCancelValue>" on CancelBooking Page
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingCancelReasonValue>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                            | check-In | check-Out| DestinationName | rate | PaymentMode     | HotelCommunication | ReasonForNotSendingValue | ReasonForNotSendingReasonValue | HotelCommunicationCancel   | ReasonForNotSendingCancelValue | ReasonForNotSendingCancelReasonValue |
      | Amadeus | Q9YD8B | TA-6 - Booking Flow - FR - Amadeus - Non Specific Hotel |       90 |        91 | London          | CWV   | Agency BillBack | No                 | Other                    | Test booking                   | No                       | Other                          | Test Booking                         |
      

  @TA-8
  Scenario Outline: TA-8 - Booking Flow - UK - Galileo - CWT Rates
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
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                   | check-In | check-Out | HotelName                                                                                                                                                                                                                                        | PaymentMode     | HotelCommunication | HotelCommunicationCancel |
      | Galileo | BP85BS | TA-8 - Booking Flow - UK - Galileo - CWT Rates |       90 |        91 | THE LEELA PALACE BENGALURU, 23 OLD AIRPORT ROAD KODIHALLI, BANGALORE, KARNATAKA, INDIA, 560008;BEST WESTERN HOTEL DU MUCEM, 22 RUE MAZENOD, MARSEILLE, FRANCE, 13002;MELIA BARCELONA SKY, DIAGONAL PERE IV 272 286, BARCELONA, SPAIN, 08005;CWV; | Agency BillBack | No                 | No                       |

  @TA-9
  Scenario Outline: TA-9 - Booking Flow - UK - Galileo - non Specific Hotel
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And Enter the "<DestinationName>"
    And you select the first preferred hotel with "<rate>" from the list
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
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
      | GDS     | PNR    | TestCaseName                                            | check-In | check-Out | DestinationName | rate | PaymentMode     | HotelCommunication | HotelCommunicationCancel |
      | Galileo | BP85BS | TA-9 - Booking Flow - UK - Galileo - non Specific Hotel |       90 |        91 | Manchester      | CWV  | Agency BillBack | No                 | No                       |

  @TA-12
  Scenario Outline: TA-12 - Booking Flow - UK - Galileo - Booking.com
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
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                      | check-In | check-Out | HotelName                                                                             | PaymentMode     | HotelCommunication | HotelCommunicationCancel |
      | Galileo | BP85BS | TA-12 - Booking Flow - UK - Galileo - Booking.com |       90 |        91 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | Agency BillBack | No                 | No                       |

  @TA-16
  Scenario Outline: TA-16 - Booking Flow - UK - Galileo - Expedia
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
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                  | check-In | check-Out | HotelName                                                                                                                                                                                                                                                                                          | PaymentMode     | HotelCommunication | HotelCommunicationCancel |
      | Galileo | BP85BS | TA-16 - Booking Flow - UK - Galileo - Expedia |       90 |        91 | INTERCONTINENTAL NYC BARCLAY, 111 EAST 48TH STREET, NEW YORK, NEW YORK, UNITED STATES, 10017;RADISSON SAO PAULO VILA OLIMPIA, R FIDENCIO RAMOS 420, SAO PAULO, BRAZIL, 04551-010;PESTANA RIO ATLANTICA HOTEL, AVENIDA ATLANTICA 2964, COPACABANA, RIO DE JANEIRO, BRAZIL, 22070-000;Aggregator;EAN | Agency BillBack | No                 | No                       |

  @TA-98
  Scenario Outline: TA-98 - Booking Flow - FI - Amadeus - CWT Rates
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And select the ReasonForNotSending "<ReasonForNotSendingValue>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And select the ReasonForNotSending "<ReasonForNotSendingCancelValue>" on CancelBooking Page
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingCancelReasonValue>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                    | check-In | check-Out | HotelName                                                                                                                                                                                                                                                         | PaymentMode       | PaymentType                 | HotelCommunication | ReasonForNotSendingValue      | HotelCommunicationCancel | ReasonForNotSendingCancelValue | ReasonForNotSendingCancelReasonValue |
      | Amadeus | T6HYGF | TA-98 - Booking Flow - FI - Amadeus - CWT Rates |       90 |        91 | THE OBEROI BANGALORE, 37 39 MAHATMA GANDHI ROAD, BANGALORE, KARNATAKA, INDIA, 560001;Jurys Inn Glasgow, 80 Jamaica Street, Glasgow, Strathclyde, United Kingdom, G1 4qg;HOLIDAY INN BERN WESTSIDE, RIEDBACHSTRASSE 96, BERN CH 3027, BERN, SWITZERLAND, 3027;CWV; | Virtual Card PMNT | Payment By CWT Virtual Card | No                 | Confirmation already received | No                       | Other                          | Test Booking                         |

  @TA-107
  Scenario Outline: TA-107 - Book again Flow - FR - Amadeus - Existing booking and search page
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And select the ReasonForNotSending "<ReasonForNotSendingValue>" on SelectTravelerPage
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingReasonValue>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    And pick Booking Refrence No from BookingConfirmationPage
    When user click on Hotels button to navigate HotelSearchPage on BookingConfirmationPage
    And click on Book Again Button on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user enter on PNR "<PNR>" to extract Traveller Info on SelectTravelerPage
    And click on Extract Traveller's details Button in Book Again flow on SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And select the ReasonForNotSending "<ReasonForNotSendingValue>" on SelectTravelerPage
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingReasonValue>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And select the ReasonForNotSending "<ReasonForNotSendingCancelValue>" on CancelBooking Page
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingCancelReasonValue>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully
    When user click on Hotels button to navigate HotelSearchPage on BookingConfirmationPage
    And user enter BookingRefNo on HotelSearchPage
    And click on View Reference No/PNR button on HotelSearchPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And select the ReasonForNotSending "<ReasonForNotSendingCancelValue>" on CancelBooking Page
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingCancelReasonValue>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                                               | check-In | check-Out | HotelName                                                                                                                                                                                                                             | PaymentMode     | HotelCommunication | ReasonForNotSendingValue | ReasonForNotSendingReasonValue | HotelCommunicationCancel | BookingRefNo  | ReasonForNotSendingCancelValue | ReasonForNotSendingCancelReasonValue |
      | Amadeus | TY2M7M | TA-107 - Book again Flow - FR - Amadeus - Existing booking and search page |       90 |        91 | Best Western Hotel Royal Centre, Rue Royale 160, Brussels, Belgium, 1000;Ramada Sofia Princess, Maria Luiza 131 Blvd, Sofia, Bulgaria, 1202;GRAND MILLENNIUM KUALA LUMPUR, 160 JALAN BUKIT BINTANG, KUALA LUMPUR, MALAYSIA, 55100;CWV | Agency BillBack | No                 | Other                    | Test booking                   | No                       | NU700028949-1 | Other                          | Test Booking                         |

  @TA-102
  Scenario Outline: TA-102 - Booking Flow- FI - Amadeus - Expedia
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And select the ReasonForNotSending "<ReasonForNotSendingValue>" on SelectTravelerPage
    #And enter the ReasonForNotSendingReason "<ReasonForNotSendingReasonValue>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And select the ReasonForNotSending "<ReasonForNotSendingCancelValue>" on CancelBooking Page
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingCancelReasonValue>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                  | check-In | check-Out | HotelName                                                                                                                                                                                                                                                                                           | PaymentMode       | PaymentType                 | HotelCommunication | ReasonForNotSendingValue      | HotelCommunicationCancel | ReasonForNotSendingCancelValue | ReasonForNotSendingCancelReasonValue |
      | Amadeus | T6HYGF | TA-102 - Booking Flow- FI - Amadeus - Expedia |       90 |        91 | INTERCONTINENTAL NYC BARCLAY, 111 EAST 48TH STREET, NEW YORK, NEW YORK, UNITED STATES, 10017;RADISSON SAO PAULO VILA OLIMPIA, R FIDENCIO RAMOS 420, SAO PAULO, BRAZIL, 04551-010;PESTANA RIO ATLANTICA HOTEL, AVENIDA ATLANTICA 2964, COPACABANA, RIO DE JANEIRO, BRAZIL, 22070-000;Aggregator;EAN; | Virtual Card PMNT | Payment By CWT Virtual Card | No                 | Confirmation already received | No                       | Other                          | Test Booking                         |

  @TA-101
  Scenario Outline: TA-101 - Booking Flow - FI - Amadeus- Booking.com
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And select the ReasonForNotSending "<ReasonForNotSendingValue>" on SelectTravelerPage
    #And enter the ReasonForNotSendingReason "<ReasonForNotSendingReasonValue>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And select the ReasonForNotSending "<ReasonForNotSendingCancelValue>" on CancelBooking Page
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingCancelReasonValue>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                      | check-In | check-Out | HotelName                                                                             | PaymentMode       | PaymentType                 | HotelCommunication | ReasonForNotSendingValue      | HotelCommunicationCancel | ReasonForNotSendingCancelValue | ReasonForNotSendingCancelReasonValue |
      | Amadeus | T6HYGF | TA-101 - Booking Flow - FI - Amadeus- Booking.com |       90 |        91 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | Virtual Card PMNT | Payment By CWT Virtual Card | No                 | Confirmation already received | No                       | Other                          | Test Booking                         |

  @TA-100
  Scenario Outline: TA-100 - Modification Flow - FI - Amadeus - Booking.com
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And select the ReasonForNotSending "<ReasonForNotSendingValue>" on SelectTravelerPage
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
    And select the ReasonForNotSending "<ReasonForNotSendingModifyValue>" on ModifyBooking Page
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingModifyReasonValue>" on ModifyBooking Page
    And user click on ModifyBooking button
    Then user should redirect to BookingConfirmationPage
    Then Booking should be created successfully
    And user verify the error message on BookingConfirmationPage
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And select the ReasonForNotSending "<ReasonForNotSendingCancelValue>" on CancelBooking Page
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingCancelReasonValue>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                            | check-In | check-Out | HotelName                                                                             | PaymentMode       | PaymentType                 | HotelCommunication | ReasonForNotSendingValue      | rate          | HotelCommunicationModify | ReasonForNotSendingModifyValue | ReasonForNotSendingModifyReasonValue | HotelCommunicationCancel | ReasonForNotSendingCancelValue | ReasonForNotSendingCancelReasonValue |
      | Amadeus | T6HYGF | TA-100 - Modification Flow - FI - Amadeus - Booking.com |       90 |        91 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | Virtual Card PMNT | Payment By CWT Virtual Card | No                 | Confirmation already received | Aggregator;BC | No                       | Other                          | Test Booking                         | No                       | Other                          | Test Booking                         |

  @TA-150
  Scenario Outline: TA-150 - Booking Flow - FR - Amadeus - Public Rates
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    #And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And select the ReasonForNotSending "<ReasonForNotSendingValue>" on SelectTravelerPage
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingReasonValue>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And select the ReasonForNotSending "<ReasonForNotSendingCancelValue>" on CancelBooking Page
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingCancelReasonValue>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                        | check-In | check-Out | HotelName                                                                                                                                                                                                                                                                                  | PaymentMode     | PaymentType                 | HotelCommunication | ReasonForNotSendingValue | ReasonForNotSendingReasonValue | HotelCommunicationCancel | ReasonForNotSendingCancelValue | ReasonForNotSendingCancelReasonValue |
      | Amadeus | Q9YJC8 | TA-150 - Booking Flow - FR - Amadeus - Public Rates |       90 |        91 | INTERCONTINENTAL NYC BARCLAY, 111 EAST 48TH STREET, NEW YORK, NEW YORK, UNITED STATES, 10017;RADISSON SAO PAULO VILA OLIMPIA, R FIDENCIO RAMOS 420, SAO PAULO, BRAZIL, 04551-010;PESTANA RIO ATLANTICA HOTEL, AVENIDA ATLANTICA 2964, COPACABANA, RIO DE JANEIRO, BRAZIL, 22070-000;Public | Agency BillBack | Payment By CWT Virtual Card | No                 | Other                    | Test Booking                   | No                       | Other                          | Test Booking                         |

  @TA-73
  Scenario Outline: TA-73 - Booking Flow - FR - Amadeus - RoomIt Rates - Additional Services
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the Breakfast "<Breakfast>" with some random amount "<BreakfastAmount>" on SelectTravelerPage
    And user select the AdditionalServices "<AdditionalServices>" with some random amount "<AdditionalServicesAmount>" on SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    #And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And select the ReasonForNotSending "<ReasonForNotSendingValue>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And select the ReasonForNotSending "<ReasonForNotSendingCancelValue>" on CancelBooking Page
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingCancelReasonValue>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                                             | check-In | check-Out | HotelName                                                                                                                                                                                                                                                            | Breakfast | BreakfastAmount | AdditionalServices | AdditionalServicesAmount | PaymentMode     | HotelCommunication | ReasonForNotSendingValue      | HotelCommunicationCancel | ReasonForNotSendingCancelValue | ReasonForNotSendingCancelReasonValue |
      | Amadeus | Q9YJC8 | TA-73 - Booking Flow - FR - Amadeus - RoomIt Rates - Additional Services |       90 |        91 | THE OBEROI BANGALORE, 37 39 MAHATMA GANDHI ROAD, BANGALORE, KARNATAKA, INDIA, 560001;PARK INN ZURICH AIRPORT, FLUGHOFSTRASSE 75, RUMLANG-ZURICH AIRPORT, SWITZERLAND, 8153;HOLIDAY INN BERN WESTSIDE, RIEDBACHSTRASSE 96, BERN CH 3027, BERN, SWITZERLAND, 3027;CWV; | Excluded  |              50 | Day use            |                       30 | Agency BillBack | No                 | Confirmation already received | No                       | Other                          | Test Booking                         |

  @TA-111
  Scenario Outline: TA-111 - Book again Flow - FR - Amadeus - Cancelled booking
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    #And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And select the ReasonForNotSending "<ReasonForNotSendingValue>" on SelectTravelerPage
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingReasonValue>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And select the ReasonForNotSending "<ReasonForNotSendingCancelValue>" on CancelBooking Page
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingCancelReasonValue>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully
    When user click on Hotels button to navigate HotelSearchPage on BookingConfirmationPage
    And user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And click on Book Again Button on HotelSearchPage for BookAgaincancel flow
    Then user should redirect to SelectTravelerPage
    When user enter on PNR "<PNR>" to extract Traveller Info on SelectTravelerPage
    And click on Extract Traveller's details Button in Book Again flow on SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And select the ReasonForNotSending "<ReasonForNotSendingValue>" on SelectTravelerPage
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingReasonValue>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And select the ReasonForNotSending "<ReasonForNotSendingCancelValue>" on CancelBooking Page
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingCancelReasonValue>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                                | check-In | check-Out | HotelName                                                                                                                                                                                                                                                          | PaymentMode     | HotelCommunication | ReasonForNotSendingValue | ReasonForNotSendingReasonValue | HotelCommunicationCancel | ReasonForNotSendingCancelValue | ReasonForNotSendingCancelReasonValue |
      | Amadeus | Q9YHD4 | TA-111 - Book again Flow - FR - Amadeus - Cancelled booking |       90 |        91 | Jurys Inn Glasgow, 80 Jamaica Street, Glasgow, Strathclyde, United Kingdom, G1 4qg;PARK INN ZURICH AIRPORT, FLUGHOFSTRASSE 75, RUMLANG-ZURICH AIRPORT, SWITZERLAND, 8153;HOLIDAY INN BERN WESTSIDE, RIEDBACHSTRASSE 96, BERN CH 3027, BERN, SWITZERLAND, 3027;CWV; | Agency BillBack | No                 | Other                    | Test Booking                   | No                       | Other                          | Test Booking                         |

  @TA-113
  Scenario Outline: TA-113 - Book again Flow - FR - Amadeus - Existing booking and confirmation page
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And select the ReasonForNotSending "<ReasonForNotSendingValue>" on SelectTravelerPage
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingReasonValue>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    And pick Booking Refrence No from BookingConfirmationPage
    And user click on BookAgain button on BookingConfirmationPage
    Then user should redirect to SelectTravelerPage
    When user enter on PNR "<PNR>" to extract Traveller Info on SelectTravelerPage
    And click on Extract Traveller's details Button in Book Again flow on SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And select the ReasonForNotSending "<ReasonForNotSendingValue>" on SelectTravelerPage
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingReasonValue>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And select the ReasonForNotSending "<ReasonForNotSendingCancelValue>" on CancelBooking Page
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingCancelReasonValue>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully
    When user click on Hotels button to navigate HotelSearchPage on BookingConfirmationPage
    And user enter BookingRefNo on HotelSearchPage
    And click on View Reference No/PNR button on HotelSearchPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And select the ReasonForNotSending "<ReasonForNotSendingCancelValue>" on CancelBooking Page
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingCancelReasonValue>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                                                     | check-In | check-Out | HotelName                                                                                                                                                                                                                                       | PaymentMode     | PaymentType                        | HotelCommunication | ReasonForNotSendingValue | ReasonForNotSendingReasonValue | HotelCommunicationCancel | BookingRefNo  | ReasonForNotSendingCancelValue | ReasonForNotSendingCancelReasonValue |
      | Amadeus | TY2KKV | TA-113 - Book again Flow - FR - Amadeus - Existing booking and confirmation page |       90 |        91 | Jurys Inn Glasgow, 80 Jamaica Street, Glasgow, Strathclyde, United Kingdom, G1 4qg;Ramada Sofia Princess, Maria Luiza 131 Blvd, Sofia, Bulgaria, 1202;GRAND MILLENNIUM KUALA LUMPUR, 160 JALAN BUKIT BINTANG, KUALA LUMPUR, MALAYSIA, 55100;CWV | Agency BillBack | Payment by CWT Virtual Credit Card | No                 | Other                    | Test booking                   | No                       | NU700028949-1 | Other                          | Test Booking                         |

  @TA-67
  Scenario Outline: TA-67 - Modification Flow - FR - Amadeus - CWT Rates
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And select the ReasonForNotSending "<ReasonForNotSendingValue>" on SelectTravelerPage
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingReasonValue>" on SelectTravelerPage
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
    And select the ReasonForNotSending "<ReasonForNotSendingModifyValue>" on ModifyBooking Page
    And user click on ModifyBooking button
    Then user should redirect to BookingConfirmationPage
    Then Booking should be created successfully
    And user verify the error message on BookingConfirmationPage
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And select the ReasonForNotSending "<ReasonForNotSendingCancelValue>" on CancelBooking Page
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingCancelReasonValue>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                         | check-In | check-Out | HotelName                                                                                                                                                                                                                                        | PaymentMode     | PaymentType                        | HotelCommunication | ReasonForNotSendingValue | ReasonForNotSendingReasonValue | rate              | HotelCommunicationModify | ReasonForNotSendingModifyValue | HotelCommunicationCancel | ReasonForNotSendingCancelValue | ReasonForNotSendingCancelReasonValue |
      | Amadeus | Q9YJC8 | TA-67 - Modification Flow - FR - Amadeus - CWT Rates |       90 |        91 | THE LEELA PALACE BENGALURU, 23 OLD AIRPORT ROAD KODIHALLI, BANGALORE, KARNATAKA, INDIA, 560008;BEST WESTERN HOTEL DU MUCEM, 22 RUE MAZENOD, MARSEILLE, FRANCE, 13002;MELIA BARCELONA SKY, DIAGONAL PERE IV 272 286, BARCELONA, SPAIN, 08005;CWV; | Agency BillBack | Payment by CWT Virtual Credit Card | No                 | Other                    | Test Booking                   | RoomIt rates;CWV; | No                       | Confirmation already received  | No                       | Other                          | Test Booking                         |

  @TA-72
  Scenario Outline: TA-72 - Modification Flow - FR - Amadeus - CWT Rates (rate/room)
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the PaymentType "<PaymentType>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And select the ReasonForNotSending "<ReasonForNotSendingValue>" on SelectTravelerPage
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingReasonValue>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Modify button on BookingConfirmationPage
    Then user should redirect to ModifyBooking Page
    And user click on ModifyRoomOrRate link on ModifyBooking Page
    And user click on GetModifyRates button on ModifyBooking Page
    And user click on AdditionalRates button on ModifyBooking Page
    And user select the different rate "<rate>" as compared to old selected rate on ModifyBooking Page
    And select the HotelCommunication "<HotelCommunicationModify>" on ModifyBooking Page
    And select the ReasonForNotSending "<ReasonForNotSendingModifyValue>" on ModifyBooking Page
    And user click on ModifyBooking button
    Then user should redirect to BookingConfirmationPage
    Then Booking should be created successfully
    And user verify the error message on BookingConfirmationPage
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And select the ReasonForNotSending "<ReasonForNotSendingCancelValue>" on CancelBooking Page
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingCancelReasonValue>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                                     | check-In | check-Out | HotelName                                                                                                                                                                                                                                                       | PaymentMode     | PaymentType                        | HotelCommunication | ReasonForNotSendingValue | ReasonForNotSendingReasonValue | rate | HotelCommunicationModify | ReasonForNotSendingModifyValue | HotelCommunicationCancel | ReasonForNotSendingCancelValue | ReasonForNotSendingCancelReasonValue |
      | Amadeus | TY2KKV | TA-72 - Modification Flow - FR - Amadeus - CWT Rates (rate/room) |       90 |        91 | THE OBEROI BANGALORE, 37 39 MAHATMA GANDHI ROAD, BANGALORE, KARNATAKA, INDIA, 560001;THE LEELA PALACE BENGALURU, 23 OLD AIRPORT ROAD KODIHALLI, BANGALORE, KARNATAKA, INDIA, 560008;MELIA BARCELONA SKY, DIAGONAL PERE IV 272 286, BARCELONA, SPAIN, 08005;CWV; | Agency BillBack | Payment by CWT Virtual Credit Card | No                 | Other                    | Test Booking                   | CWV  | No                       | Confirmation already received  | No                       | Other                          | Test Booking                         |

  @TA-15
  Scenario Outline: TA-15 - Booking Flow - FR - Amadeus - Booking.com
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And select the ReasonForNotSending "<ReasonForNotSendingValue>" on SelectTravelerPage
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingReasonValue>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And select the ReasonForNotSending "<ReasonForNotSendingCancelValue>" on CancelBooking Page
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingCancelReasonValue>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                      | check-In | check-Out | HotelName                                                                             | PaymentMode     | HotelCommunication | ReasonForNotSendingValue | ReasonForNotSendingReasonValue | HotelCommunicationCancel | ReasonForNotSendingCancelValue | ReasonForNotSendingCancelReasonValue |
      | Amadeus | TY2M7M | TA-15 - Booking Flow - FR - Amadeus - Booking.com |       90 |        91 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | Agency BillBack | No                 | Other                    | Test booking                   | No                       | Other                          | Test Booking                         |

  @TA-60
  Scenario Outline: TA-60 - Booking Flow - FR - Amadeus - Expedia
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And select the ReasonForNotSending "<ReasonForNotSendingValue>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And select the ReasonForNotSending "<ReasonForNotSendingCancelValue>" on CancelBooking Page
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingCancelReasonValue>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                  | check-In | check-Out | HotelName                                                                                                                                                                                                                                                                                                              | PaymentMode     | HotelCommunication | ReasonForNotSendingValue      | ReasonForNotSendingReasonValue | HotelCommunicationCancel | ReasonForNotSendingCancelValue | ReasonForNotSendingCancelReasonValue |
      | Amadeus | TY2M7M | TA-60 - Booking Flow - FR - Amadeus - Expedia |       90 |        91 | Best Western Hotel Dortmund Airport, Schleefstrasse 2c, Dortmund, Germany, 44287;Homewood Suites Seattle Convention Cente, 1011 Pike Street, Seattle, Washington, United States, 98101;Doubletree by Hilton Arctic Club Sea, 700 3rd Avenue at Cherry Street, Seattle, Washington, United States, 98104;Aggregator;EAN | Agency BillBack | No                 | Confirmation already received | Test booking                   | No                       | Other                          | Test Booking                         |

  @TA-17
  Scenario Outline: TA-17 - Modification Flow - FR - Amadeus - Booking.com
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And select the ReasonForNotSending "<ReasonForNotSendingValue>" on SelectTravelerPage
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingReasonValue>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Modify button on BookingConfirmationPage
    Then user should redirect to ModifyBooking Page
    And user click on ModifyCheckInAndCheckOut link on ModifyBooking Page
    And user change the Check-In and Check-Out Date on ModifyBooking Page
    And user select the rate "<rate>" on ModifyBooking Page
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And select the ReasonForNotSending "<ReasonForNotSendingValue>" on SelectTravelerPage
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingReasonValue>" on SelectTravelerPage
    And user click on ModifyBooking button
    Then user should redirect to BookingConfirmationPage
    Then Booking should be created successfully
    And user verify the error message on BookingConfirmationPage
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And select the ReasonForNotSending "<ReasonForNotSendingCancelValue>" on CancelBooking Page
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingCancelReasonValue>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                           | check-In | check-Out | HotelName                                                                             | PaymentMode     | HotelCommunication | ReasonForNotSendingValue | ReasonForNotSendingReasonValue | rate          | HotelCommunicationCancel | ReasonForNotSendingCancelValue | ReasonForNotSendingCancelReasonValue |
      | Amadeus | TY2M7M | TA-17 - Modification Flow - FR - Amadeus - Booking.com |       95 |        96 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | Agency BillBack | No                 | Other                    | Test booking                   | Aggregator;BC | No                       | Other                          | Test Booking                         |

  @TA-18
  Scenario Outline: TA-18 - Booking Flow - FR - Amadeus - CWT Rates
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And select the ReasonForNotSending "<ReasonForNotSendingValue>" on SelectTravelerPage
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingReasonValue>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    And user verify the error message on BookingConfirmationPage
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And select the ReasonForNotSending "<ReasonForNotSendingCancelValue>" on CancelBooking Page
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingCancelReasonValue>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                    | check-In | check-Out | HotelName                                                                                                                                                                                                                             | PaymentMode     | HotelCommunication | ReasonForNotSendingValue | ReasonForNotSendingReasonValue | HotelCommunicationCancel | ReasonForNotSendingCancelValue | ReasonForNotSendingCancelReasonValue |
      | Amadeus | TY2M7M | TA-18 - Booking Flow - FR - Amadeus - CWT Rates |       90 |        91 | Best Western Hotel Royal Centre, Rue Royale 160, Brussels, Belgium, 1000;Ramada Sofia Princess, Maria Luiza 131 Blvd, Sofia, Bulgaria, 1202;GRAND MILLENNIUM KUALA LUMPUR, 160 JALAN BUKIT BINTANG, KUALA LUMPUR, MALAYSIA, 55100;CWV | Agency BillBack | No                 | Other                    | Test booking                   | No                       | Other                          | Test Booking                         |

  @TA-66
  Scenario Outline: TA-66 - Booking flow WITHOUT PNR - FR - Amadeus - CWT Rates
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the CustomerDetail "<CustomerDetail>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user enter on PNR "<PNR>" to extract Traveller Info on SelectTravelerPage
    And click on Extract Traveller's details Button in Book Again flow on SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And select the ReasonForNotSending "<ReasonForNotSendingValue>" on SelectTravelerPage
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingReasonValue>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    When user click on ViewBooking button on BookingConfirmationPage
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And select the ReasonForNotSending "<ReasonForNotSendingCancelValue>" on CancelBooking Page
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingCancelReasonValue>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | CustomerDetail | TestCaseName                                                | check-In | check-Out | HotelName                                                                                                                                                                                                                                                                       | PaymentMode     | HotelCommunication | ReasonForNotSendingValue | ReasonForNotSendingReasonValue | HotelCommunicationCancel | ReasonForNotSendingCancelValue | ReasonForNotSendingCancelReasonValue |
      | Amadeus | TY2M7M | FR_CWT         | TA-66 - Booking flow WITHOUT PNR - FR - Amadeus - CWT Rates |       90 |        91 | GRAND MILLENNIUM KUALA LUMPUR, 160 JALAN BUKIT BINTANG, KUALA LUMPUR, MALAYSIA, 55100;Best Western Hotel Royal Centre, Rue Royale 160, Brussels, Belgium, 1000;Citadines St Catherine Bxl, 51 Quai Au Bois A Bruler, Brussels 1000 Capital Region, Brussels, Belgium, 1000;CWV; | Agency BillBack | No                 | Other                    | Test booking                   | No                       | Other                          | Test Booking                         |

  @TA-37
  Scenario Outline: TA-37 - Cancellation Flow - FR - Amadeus - CWT Rates
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And select the ReasonForNotSending "<ReasonForNotSendingValue>" on SelectTravelerPage
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingReasonValue>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    And user verify the error message on BookingConfirmationPage
    And pick Booking Refrence No from BookingConfirmationPage
    When user click on Hotels button to navigate HotelSearchPage on BookingConfirmationPage
    And user enter BookingRefNo on HotelSearchPage
    And click on View Reference No/PNR button on HotelSearchPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And select the ReasonForNotSending "<ReasonForNotSendingCancelValue>" on CancelBooking Page
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingCancelReasonValue>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                         | check-In | check-Out | HotelName                                                                                                                                                                                                                             | PaymentMode     | HotelCommunication | ReasonForNotSendingValue | ReasonForNotSendingReasonValue | HotelCommunicationCancel | ReasonForNotSendingCancelValue | ReasonForNotSendingCancelReasonValue |
      | Amadeus | TY2M7M | TA-37 - Cancellation Flow - FR - Amadeus - CWT Rates |       90 |        91 | Best Western Hotel Royal Centre, Rue Royale 160, Brussels, Belgium, 1000;Ramada Sofia Princess, Maria Luiza 131 Blvd, Sofia, Bulgaria, 1202;GRAND MILLENNIUM KUALA LUMPUR, 160 JALAN BUKIT BINTANG, KUALA LUMPUR, MALAYSIA, 55100;CWV | Agency BillBack | No                 | Other                    | Test booking                   | No                       | Other                          | Test Booking                         |

  @TA-13
  Scenario Outline: TA-13 - Booking Flow - UK - Sabre - CWT Rates
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
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS   | PNR    | TestCaseName                                  | check-In | check-Out | HotelName                                                                                                                                                                                                                            | PaymentMode     | HotelCommunication | HotelCommunicationCancel |
      | Sabre | DVVLRC | TA-13 - Booking Flow - UK - Sabre - CWT Rates |       90 |        91 | Jurys Inn Glasgow, 80 Jamaica Street, Glasgow, Strathclyde, United Kingdom, G1 4qg;BEST WESTERN HOTEL DU MUCEM, 22 RUE MAZENOD, MARSEILLE, FRANCE, 13002;MELIA BARCELONA SKY, DIAGONAL PERE IV 272 286, BARCELONA, SPAIN, 08005;CWV; | Agency BillBack | No                 | No                       |

  @TA-58
  Scenario Outline: TA-58 - Booking Flow - UK - Sabre - Booking.com
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
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS   | PNR    | TestCaseName                                    | check-In | check-Out | HotelName                                                                             | PaymentMode     | HotelCommunication | HotelCommunicationCancel |
      | Sabre | DVVLRC | TA-58 - Booking Flow - UK - Sabre - Booking.com |       90 |        91 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | Agency BillBack | No                 | No                       |

  @TA-59
  Scenario Outline: TA-59 - Booking Flow - UK - Sabre - Expedia
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
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS   | PNR    | TestCaseName                                | check-In | check-Out | HotelName                                                                                                                                                                                                                                                                                          | PaymentMode     | HotelCommunication | HotelCommunicationCancel |
      | Sabre | DVVLRC | TA-59 - Booking Flow - UK - Sabre - Expedia |       90 |        91 | INTERCONTINENTAL NYC BARCLAY, 111 EAST 48TH STREET, NEW YORK, NEW YORK, UNITED STATES, 10017;RADISSON SAO PAULO VILA OLIMPIA, R FIDENCIO RAMOS 420, SAO PAULO, BRAZIL, 04551-010;PESTANA RIO ATLANTICA HOTEL, AVENIDA ATLANTICA 2964, COPACABANA, RIO DE JANEIRO, BRAZIL, 22070-000;Aggregator;EAN | Agency BillBack | No                 | No                       |

  @TA-61
  Scenario Outline: TA-61 - Booking Flow - UK - Amadeus - Expedia
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
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                  | check-In | check-Out | HotelName                                                                                                                                                                                                                                                                                          | PaymentMode     | HotelCommunication | HotelCommunicationCancel |
      | Amadeus | UXON3Z | TA-61 - Booking Flow - UK - Amadeus - Expedia |       90 |        91 | INTERCONTINENTAL NYC BARCLAY, 111 EAST 48TH STREET, NEW YORK, NEW YORK, UNITED STATES, 10017;RADISSON SAO PAULO VILA OLIMPIA, R FIDENCIO RAMOS 420, SAO PAULO, BRAZIL, 04551-010;PESTANA RIO ATLANTICA HOTEL, AVENIDA ATLANTICA 2964, COPACABANA, RIO DE JANEIRO, BRAZIL, 22070-000;Aggregator;EAN | Agency BillBack | No                 | No                       |

  @TA-62
  Scenario Outline: TA-62 - Booking Flow - UK - Amadeus - Booking.com
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
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                      | check-In | check-Out | HotelName                                                                             | PaymentMode     | HotelCommunication | HotelCommunicationCancel |
      | Amadeus | UXON3Z | TA-62 - Booking Flow - UK - Amadeus - Booking.com |       90 |        91 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | Agency BillBack | No                 | No                       |

  @TA-99
  Scenario Outline: TA-99 - Modification flow - UK - Galileo - Booking.com
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
      | GDS     | PNR    | TestCaseName                                           | check-In | check-Out | HotelName                                                                             | PaymentMode     | HotelCommunication | rate          | HotelCommunicationModify | HotelCommunicationCancel |
      | Galileo | BP85BS | TA-99 - Modification flow - UK - Galileo - Booking.com |       90 |        91 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | Agency BillBack | No                 | Aggregator;BC | No                       | No                       |

  @TA-21
  Scenario Outline: TA-21 - Modification flow - UK - Amadeus - Booking.com
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
      | GDS     | PNR    | TestCaseName                                           | check-In | check-Out | HotelName                                                                             | PaymentMode     | HotelCommunication | rate          | HotelCommunicationModify | HotelCommunicationCancel |
      | Amadeus | UXON3Z | TA-21 - Modification flow - UK - Amadeus - Booking.com |       90 |        91 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | Agency BillBack | No                 | Aggregator;BC | No                       | No                       |

  @TA-156
  Scenario Outline: TA-156 - Modification flow - UK - Sabre - Booking.com
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
      | GDS   | PNR    | TestCaseName                                          | check-In | check-Out | HotelName                                                                             | PaymentMode     | HotelCommunication | rate          | HotelCommunicationModify | HotelCommunicationCancel |
      | Sabre | DVVLRC | TA-156 - Modification flow - UK - Sabre - Booking.com |       90 |        91 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | Agency BillBack | No                 | Aggregator;BC | No                       | No                       |

  @TA-63
  Scenario Outline: TA-63 - Booking Flow - UK - Amadeus - CWT Rates
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
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                    | check-In | check-Out | HotelName                                                                                                                                                                                                                            | PaymentMode     | HotelCommunication | HotelCommunicationCancel |
      | Amadeus | UXON3Z | TA-63 - Booking Flow - UK - Amadeus - CWT Rates |       90 |        91 | Jurys Inn Glasgow, 80 Jamaica Street, Glasgow, Strathclyde, United Kingdom, G1 4qg;BEST WESTERN HOTEL DU MUCEM, 22 RUE MAZENOD, MARSEILLE, FRANCE, 13002;MELIA BARCELONA SKY, DIAGONAL PERE IV 272 286, BARCELONA, SPAIN, 08005;CWV; | Agency BillBack | No                 | No                       |

  @TA-149
  Scenario Outline: TA-149 - Booking Flow - UK - Amadeus - Public Rates
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
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                        | check-In | check-Out | HotelName                                                                                                                                                                                                                                                                                                               | PaymentMode     | HotelCommunication | HotelCommunicationCancel |
      | Amadeus | UXON3Z | TA-149 - Booking Flow - UK - Amadeus - Public Rates |       90 |        91 | HILTON RIO DE JANEIRO COPACABANA, AVENUE ATLANTICA 1020, COPACABANA, RIO DE JANEIRO, BRAZIL, 22021-001;RADISSON BLU PLAZA HOTEL SYDNEY, 27 O CONNELL STREET, SYDNEY, NEW SOUTH WALES, AUSTRALIA, 2000;INTERCONTINENTAL MELBOURNE, 495 COLLINS STREET, MELBOURNE VI AU 3000, MELBOURNE, VICTORIA, AUSTRALIA, 3000;Public | Agency BillBack | No                 | No                       |

  @TA-148
  Scenario Outline: TA-148 - Booking Flow - UK - Sabre - Public Rates
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
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS   | PNR    | TestCaseName                                      | check-In | check-Out | HotelName                                                                                                                                                                                                                                                                                                               | PaymentMode     | HotelCommunication | HotelCommunicationCancel |
      | Sabre | DVVLRC | TA-148 - Booking Flow - UK - Sabre - Public Rates |       90 |        91 | HILTON RIO DE JANEIRO COPACABANA, AVENUE ATLANTICA 1020, COPACABANA, RIO DE JANEIRO, BRAZIL, 22021-001;RADISSON BLU PLAZA HOTEL SYDNEY, 27 O CONNELL STREET, SYDNEY, NEW SOUTH WALES, AUSTRALIA, 2000;INTERCONTINENTAL MELBOURNE, 495 COLLINS STREET, MELBOURNE VI AU 3000, MELBOURNE, VICTORIA, AUSTRALIA, 3000;Public | Agency BillBack | No                 | No                       |

  @TA-151
  Scenario Outline: TA-151 - Booking Flow- FI - Amadeus - Public rates
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
      | GDS     | PNR    | TestCaseName                                       | check-In | check-Out | HotelName                                                                                                                                                                                                                                                                                                               | PaymentMode       | PaymentType                 | HotelCommunication | HotelCommunicationCancel |
      | Amadeus | T6HYGF | TA-151 - Booking Flow- FI - Amadeus - Public rates |       90 |        91 | HILTON RIO DE JANEIRO COPACABANA, AVENUE ATLANTICA 1020, COPACABANA, RIO DE JANEIRO, BRAZIL, 22021-001;RADISSON BLU PLAZA HOTEL SYDNEY, 27 O CONNELL STREET, SYDNEY, NEW SOUTH WALES, AUSTRALIA, 2000;INTERCONTINENTAL MELBOURNE, 495 COLLINS STREET, MELBOURNE VI AU 3000, MELBOURNE, VICTORIA, AUSTRALIA, 3000;Public | Virtual Card PMNT | Payment By CWT Virtual Card | No                 | No                       |

  @TA-855
  Scenario Outline: TA-855 - Modification flow - UK - Galileo - RoomIt rates
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
      | GDS     | PNR    | TestCaseName                                             | check-In | check-Out | HotelName                                                                                                                                                                                                                                                            | PaymentMode     | HotelCommunication | rate              | HotelCommunicationModify | HotelCommunicationCancel |
      | Galileo | BP85BS | TA-855 - Modification flow - UK - Galileo - RoomIt rates |       90 |        91 | THE OBEROI BANGALORE, 37 39 MAHATMA GANDHI ROAD, BANGALORE, KARNATAKA, INDIA, 560001;PARK INN ZURICH AIRPORT, FLUGHOFSTRASSE 75, RUMLANG-ZURICH AIRPORT, SWITZERLAND, 8153;HOLIDAY INN BERN WESTSIDE, RIEDBACHSTRASSE 96, BERN CH 3027, BERN, SWITZERLAND, 3027;CWV; | Agency BillBack | No                 | RoomIt rates;CWV; | No                       | No                       |

  @TA-854
  Scenario Outline: TA-854 - Modification flow - UK - Sabre - RoomIt rates
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
      | GDS   | PNR    | TestCaseName                                           | check-In | check-Out | HotelName                                                                                                                                                                                                                                                            | PaymentMode     | HotelCommunication | rate              | HotelCommunicationModify | HotelCommunicationCancel |
      | Sabre | DVVLRC | TA-854 - Modification flow - UK - Sabre - RoomIt rates |       90 |        91 | THE OBEROI BANGALORE, 37 39 MAHATMA GANDHI ROAD, BANGALORE, KARNATAKA, INDIA, 560001;PARK INN ZURICH AIRPORT, FLUGHOFSTRASSE 75, RUMLANG-ZURICH AIRPORT, SWITZERLAND, 8153;HOLIDAY INN BERN WESTSIDE, RIEDBACHSTRASSE 96, BERN CH 3027, BERN, SWITZERLAND, 3027;CWV; | Agency BillBack | No                 | RoomIt rates;CWV; | No                       | No                       |

  @TA-856
  Scenario Outline: TA-856 - Modification flow - UK - Amadeus - RoomIt rates
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
      | GDS     | PNR    | TestCaseName                                             | check-In | check-Out | HotelName                                                                                                                                                                                                                                                            | PaymentMode     | HotelCommunication | rate              | HotelCommunicationModify | HotelCommunicationCancel |
      | Amadeus | UXON3Z | TA-856 - Modification flow - UK - Amadeus - RoomIt rates |       90 |        91 | THE OBEROI BANGALORE, 37 39 MAHATMA GANDHI ROAD, BANGALORE, KARNATAKA, INDIA, 560001;PARK INN ZURICH AIRPORT, FLUGHOFSTRASSE 75, RUMLANG-ZURICH AIRPORT, SWITZERLAND, 8153;HOLIDAY INN BERN WESTSIDE, RIEDBACHSTRASSE 96, BERN CH 3027, BERN, SWITZERLAND, 3027;CWV; | Agency BillBack | No                 | RoomIt rates;CWV; | No                       | No                       |

  @TA-20
  Scenario Outline: TA-20 - Booking Flow - UK - Sabre - non specific Hotel
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And Enter the "<DestinationName>"
    And you select the first preferred hotel with "<rate>" from the list
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
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
      | GDS   | PNR    | TestCaseName                                           | check-In | check-Out | DestinationName | rate | PaymentMode     | HotelCommunication | HotelCommunicationCancel |
      | Sabre | DVVLRC | TA-20 - Booking Flow - UK - Sabre - non specific Hotel |       90 |        91 | London          | CWV  | Agency BillBack | No                 | No                       |

  @TA-57
  Scenario Outline: TA-57 - Booking Flow - UK - Galileo - Public Rates
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
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                       | check-In | check-Out | HotelName                                                                                                                                                                                                                                                                                                               | PaymentMode     | HotelCommunication | HotelCommunicationCancel |
      | Galileo | BP85BS | TA-57 - Booking Flow - UK - Galileo - Public Rates |       90 |        91 | HILTON RIO DE JANEIRO COPACABANA, AVENUE ATLANTICA 1020, COPACABANA, RIO DE JANEIRO, BRAZIL, 22021-001;RADISSON BLU PLAZA HOTEL SYDNEY, 27 O CONNELL STREET, SYDNEY, NEW SOUTH WALES, AUSTRALIA, 2000;INTERCONTINENTAL MELBOURNE, 495 COLLINS STREET, MELBOURNE VI AU 3000, MELBOURNE, VICTORIA, AUSTRALIA, 3000;Public | Agency BillBack | No                 | No                       |
