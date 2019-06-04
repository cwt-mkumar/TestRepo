Feature: PNRSpecss all test cases

  @TA-666
  Scenario Outline: TA-666 - PNR Specs - UK - Amadeus - PAYMENT D RoomIt Rate
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
    And Capture values from confirmation page
    And Click on PNRLink of BookingConfirmationPage
    And Read data from pop up PNR view
    And Validate the "HotelCityCodeValidateDate" Remark in PNR GDS Response with below data
      | YES |
    And Validate the "SpecialInfo" Remark in PNR GDS Response with below data
      | Yes;No;;;No;;No;; |
    And Validate the "ConfirmationNum" Remark in PNR GDS Response
    And Validate the "BookingStatusCode" Remark in PNR GDS Response with below data
      | HOK;BOOKING CONFIRMED;seqNum |
    And Validate the "PaymentModeType" Remark in PNR GDS Response with below data
      | 3003;B |
    And Validate the "CardType" Remark in PNR GDS Response with below data
      | W |
    And Validate the "PrintVoucher" Remark in PNR GDS Response with below data
      | Y |
    And Validate the "HotelKey" Remark in PNR GDS Response with below data
      | 3008 |
    And Validate the "RoomTypeInfo" Remark in PNR GDS Response with below data
      | ROH |
    And Validate the "VATInfo" Remark in PNR GDS Response with below data
      |  |
    And Validate the "ReferenceNum" Remark in PNR GDS Response with below data
      |  |
    And Validate the "BookingTool" Remark in PNR GDS Response with below data
      | 3311;0HH |
    And Validate the "BookingSrc" Remark in PNR GDS Response with below data
      | 3318;G |
    And Validate the "Commission" Remark in PNR GDS Response with below data
      |  |
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                              | check-In | check-Out | HotelName                                                                                                                            | PaymentMode     | HotelCommunication | HotelCommunicationCancel |
      | Amadeus | UXON3Z | TA-666 - PNR Specs - UK - Amadeus - PAYMENT D RoomIt Rate |       90 |        91 | Radisson Blu Edwardian, Free Trade Hall Peter Street, Free Trade Hall, Manchester, Greater Manchester, United Kingdom, M2 5gp;;;CWV; | Agency BillBack | No                 | No                       |

  @TA-846
  Scenario Outline: TA-846 - PNR Specs Validation - UK - Amadeus- PAYMENT D - RoomIt Rate modification
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
    And Capture values from confirmation page
    And Click on PNRLink of BookingConfirmationPage
    And Read data from pop up PNR view
    And Validate the "HotelCityCodeValidateDate" Remark in PNR GDS Response with below data
      | YES |
    And Validate the "SpecialInfo" Remark in PNR GDS Response with below data
      | Yes;No;;;No;;No;; |
    And Validate the "ConfirmationNum" Remark in PNR GDS Response
    And Validate the "BookingStatusCode" Remark in PNR GDS Response with below data
      | MOD;BOOKING MODIFIED;seqNum |
    And Validate the "PaymentModeType" Remark in PNR GDS Response with below data
      | 3003;B |
    And Validate the "CardType" Remark in PNR GDS Response with below data
      | W |
    And Validate the "PrintVoucher" Remark in PNR GDS Response with below data
      | Y |
    And Validate the "HotelKey" Remark in PNR GDS Response with below data
      | 3008 |
    And Validate the "RoomTypeInfo" Remark in PNR GDS Response with below data
      | ROH |
    And Validate the "ReferenceNum" Remark in PNR GDS Response with below data
      |  |
    And Validate the "VATInfo" Remark in PNR GDS Response with below data
      |  |
    And Validate the "BookingTool" Remark in PNR GDS Response with below data
      | 3311;0HH |
    And Validate the "BookingSrc" Remark in PNR GDS Response with below data
      | 3318;G |
    And Validate the "Commission" Remark in PNR GDS Response with below data
      |  |
    When user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                                                       | check-In | check-Out | HotelName                          | PaymentMode     | HotelCommunication | rate              | HotelCommunicationModify | HotelCommunicationCancel |
      | Amadeus | UXON3Z | TA-846 - PNR Specs Validation - UK - Amadeus- PAYMENT D - RoomIt Rate modification |       90 |        91 | RADISSON BLU GRAFTON LONDON;;;CWV; | Agency BillBack | No                 | RoomIt rates;CWV; | No                       | No                       |

  @TA-937
  Scenario Outline: TA-937 - PNR Specs Validation - UK - Amadeus- PAYMENT D - cancellation
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
    And Capture values from confirmation page
    And Click on PNRLink of BookingConfirmationPage
    And Read data from pop up PNR view
    And Validate the "HotelCityCodeValidateDate" Remark in PNR GDS Response with below data
      | CXL;YES |
    And Validate the "ConfirmationNum" Remark in PNR GDS Response
    And Validate the "BookingStatusCode" Remark in PNR GDS Response with below data
      | CXL;BOOKING CANCELLED |
    And Validate the "PaymentModeType" Remark in PNR GDS Response with below data
      | CXL |
    And Validate the "CardType" Remark in PNR GDS Response with below data
      | CXL |
    And Validate the "PrintVoucher" Remark in PNR GDS Response with below data
      | CXL |
    And Validate the "HotelKey" Remark in PNR GDS Response with below data
      | CXL |
    And Validate the "RoomTypeInfo" Remark in PNR GDS Response with below data
      | CXL |
    And Validate the "ReferenceNum" Remark in PNR GDS Response with below data
      | CXL |
    And Validate the "VATInfo" Remark in PNR GDS Response with below data
      | CXL |
    And Validate the "BookingTool" Remark in PNR GDS Response with below data
      | CXL |
    And Validate the "BookingSrc" Remark in PNR GDS Response with below data
      | CXL |
    And Validate the "Commission" Remark in PNR GDS Response with below data
      | CXL |

    Examples: 
      | GDS     | PNR    | TestCaseName                                                           | check-In | check-Out | HotelName                          | PaymentMode     | HotelCommunication | HotelCommunicationCancel |
      | Amadeus | UXON3Z | TA-937 - PNR Specs Validation - UK - Amadeus- PAYMENT D - cancellation |       90 |        91 | RADISSON BLU GRAFTON LONDON;;;CWV; | Agency BillBack | No                 | No                       |

  @TA-918
  Scenario Outline: TA-918 - PNR Specs Validation - UK - Amadeus - PAYMENT D - Booking.com
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
    And Capture values from confirmation page
    And Click on PNRLink of BookingConfirmationPage
    And Read data from pop up PNR view
    And Validate the "HotelCityCodeValidateDate" Remark in PNR GDS Response with below data
      | YES |
    And Validate the "SpecialInfo" Remark in PNR GDS Response with below data
      | Yes;No;;;No;;No;; |
    And Validate the "ConfirmationNum" Remark in PNR GDS Response
    And Validate the "BookingStatusCode" Remark in PNR GDS Response with below data
      | HOK;BOOKING CONFIRMED;seqNum |
    And Validate the "PaymentModeType" Remark in PNR GDS Response with below data
      | 3003;B |
    And Validate the "CardType" Remark in PNR GDS Response with below data
      | W |
    And Validate the "PrintVoucher" Remark in PNR GDS Response with below data
      | Y |
    And Validate the "HotelKey" Remark in PNR GDS Response with below data
      | 3008 |
    And Validate the "RoomTypeInfo" Remark in PNR GDS Response with below data
      | ROH |
    And Validate the "VATInfo" Remark in PNR GDS Response with below data
      |  |
    And Validate the "ReferenceNum" Remark in PNR GDS Response with below data
      |  |
    And Validate the "BookingTool" Remark in PNR GDS Response with below data
      | 3311;0HH |
    And Validate the "BookingSrc" Remark in PNR GDS Response with below data
      | 3318;B |
    And Validate the "Commission" Remark in PNR GDS Response with below data
      |  |
    And Validate the "HotelRoomRateValidate" Remark in PNR GDS Response with below data
      | YES |
    And Validate the "RoomRateType" Remark in PNR GDS Response with below data
      | RAC |
    And Validate the "Currency" Remark in PNR GDS Response with below data
      | No;USD |
    And Validate the "BookingPin" Remark in PNR GDS Response
    And Validate the "ConfermaID" Remark in PNR GDS Response with below data
      | AFFILIATE TEST HOTEL |
    And Validate the "ConfirmationNumBC" Remark in PNR GDS Response
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                                           | check-In | check-Out | HotelName                                                                             | PaymentMode     | HotelCommunication | HotelCommunicationCancel |
      | Amadeus | UXON3Z | TA-918 - PNR Specs Validation - UK - Amadeus - PAYMENT D - Booking.com |       90 |        91 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | Agency BillBack | No                 | No                       |

  @TA-920
  Scenario Outline: TA-920 - PNR Specs Validation - UK - Amadeus - PAYMENT D - Expedia
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
    And Capture values from confirmation page
    And Click on PNRLink of BookingConfirmationPage
    And Read data from pop up PNR view
    And Validate the "HotelCityCodeValidateDate" Remark in PNR GDS Response with below data
      | YES |
    And Validate the "SpecialInfo" Remark in PNR GDS Response with below data
      | Yes;No;;;No;;No;; |
    And Validate the "ConfirmationNum" Remark in PNR GDS Response
    And Validate the "BookingStatusCode" Remark in PNR GDS Response with below data
      | HOK;BOOKING CONFIRMED;seqNum |
    And Validate the "PaymentModeType" Remark in PNR GDS Response with below data
      | 3003;B |
    And Validate the "CardType" Remark in PNR GDS Response with below data
      | W |
    And Validate the "PrintVoucher" Remark in PNR GDS Response with below data
      | Y |
    And Validate the "HotelKey" Remark in PNR GDS Response with below data
      | 3008 |
    And Validate the "RoomTypeInfo" Remark in PNR GDS Response with below data
      | ROH |
    And Validate the "VATInfo" Remark in PNR GDS Response with below data
      |  |
    And Validate the "ReferenceNum" Remark in PNR GDS Response with below data
      |  |
    And Validate the "BookingTool" Remark in PNR GDS Response with below data
      | 3311;0HH |
    And Validate the "BookingSrc" Remark in PNR GDS Response with below data
      | 3318;X |
    And Validate the "Commission" Remark in PNR GDS Response with below data
      |  |
    And Validate the "HotelRoomRateValidate" Remark in PNR GDS Response with below data
      | YES |
    And Validate the "RoomRateType" Remark in PNR GDS Response with below data
      | RAC |
    And Validate the "Currency" Remark in PNR GDS Response with below data
      | No;GBP |
    And Validate the "ItineraryID" Remark in PNR GDS Response with below data
      |  |
    And Validate the "ConfermaID" Remark in PNR GDS Response with below data
      | RADISSON BLU KENILWORTH LONDON |
    And Validate the "ConfirmationNumBC" Remark in PNR GDS Response
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                                       | check-In | check-Out | HotelName                                                                                                                         | PaymentMode     | HotelCommunication | HotelCommunicationCancel |
      | Amadeus | UXON3Z | TA-920 - PNR Specs Validation - UK - Amadeus - PAYMENT D - Expedia |       92 |        93 | Radisson Blu Kenilworth London, 97 Great Russell Street Blooms, London, Greater London, United Kingdom, Wc1b 3lb;;;Aggregator;EAN | Agency BillBack | No                 | No                       |

  @TA-919
  Scenario Outline: TA-919 - PNR Specs Validation - UK - Amadeus - PAYMENT D - Booking.com modification
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
    And Capture values from confirmation page
    And Click on PNRLink of BookingConfirmationPage
    And Read data from pop up PNR view
    And Validate the "HotelCityCodeValidateDate" Remark in PNR GDS Response with below data
      | YES |
    And Validate the "SpecialInfo" Remark in PNR GDS Response with below data
      | Yes;No;;;No;;No;; |
    And Validate the "ConfirmationNum" Remark in PNR GDS Response
    And Validate the "BookingStatusCode" Remark in PNR GDS Response with below data
      | MOD;BOOKING MODIFIED;seqNum |
    And Validate the "PaymentModeType" Remark in PNR GDS Response with below data
      | 3003;B |
    And Validate the "CardType" Remark in PNR GDS Response with below data
      | W |
    And Validate the "PrintVoucher" Remark in PNR GDS Response with below data
      | Y |
    And Validate the "HotelKey" Remark in PNR GDS Response with below data
      | 3008 |
    And Validate the "RoomTypeInfo" Remark in PNR GDS Response with below data
      | ROH |
    And Validate the "VATInfo" Remark in PNR GDS Response with below data
      |  |
    And Validate the "ReferenceNum" Remark in PNR GDS Response with below data
      |  |
    And Validate the "BookingTool" Remark in PNR GDS Response with below data
      | 3311;0HH |
    And Validate the "BookingSrc" Remark in PNR GDS Response with below data
      | 3318;B |
    And Validate the "Commission" Remark in PNR GDS Response with below data
      |  |
    And Validate the "HotelRoomRateValidate" Remark in PNR GDS Response with below data
      | YES |
    And Validate the "RoomRateType" Remark in PNR GDS Response with below data
      | RAC |
    And Validate the "Currency" Remark in PNR GDS Response with below data
      | No;USD |
    And Validate the "BookingPin" Remark in PNR GDS Response
    And Validate the "ConfermaID" Remark in PNR GDS Response with below data
      | AFFILIATE TEST HOTEL |
    And Validate the "ConfirmationNumBC" Remark in PNR GDS Response
    When user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                                                        | check-In | check-Out | HotelName                                                                             | PaymentMode     | HotelCommunication | rate          | HotelCommunicationModify | HotelCommunicationCancel |
      | Amadeus | UXON3Z | TA-919 - PNR Specs Validation - UK - Amadeus - PAYMENT D - Booking.com modification |       89 |        90 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | Agency BillBack | No                 | Aggregator;BC | No                       | No                       |

  @TA-1402
  Scenario Outline: TA - 1402 - PNR Specs Validation - UK - Amadeus - PAYMENT F - Expedia
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
    And Capture values from confirmation page
    And Click on PNRLink of BookingConfirmationPage
    And Read data from pop up PNR view
    And Validate the "HotelCityCodeValidateDate" Remark in PNR GDS Response with below data
      | YES |
    And Validate the "SpecialInfo" Remark in PNR GDS Response with below data
      | Yes;No;;No;No;;Yes;EXPEDIA; |
    And Validate the "ConfirmationNum" Remark in PNR GDS Response
    And Validate the "BookingStatusCode" Remark in PNR GDS Response with below data
      | HOK;BOOKING CONFIRMED;seqNum |
    And Validate the "PaymentModeType" Remark in PNR GDS Response with below data
      | 3003;R |
    And Validate the "CardType" Remark in PNR GDS Response with below data
      | C |
    And Validate the "PrintVoucher" Remark in PNR GDS Response with below data
      | Y |
    And Validate the "HotelKey" Remark in PNR GDS Response with below data
      | 3008 |
    And Validate the "RoomTypeInfo" Remark in PNR GDS Response with below data
      | ROH |
    And Validate the "VATInfo" Remark in PNR GDS Response with below data
      |  |
    And Validate the "ReferenceNum" Remark in PNR GDS Response with below data
      |  |
    And Validate the "BookingTool" Remark in PNR GDS Response with below data
      | 3311;0HH |
    And Validate the "BookingSrc" Remark in PNR GDS Response with below data
      | 3318;X |
    And Validate the "Commission" Remark in PNR GDS Response with below data
      |  |
    And Validate the "HotelRoomRateValidate" Remark in PNR GDS Response with below data
      | YES |
    And Validate the "RoomRateType" Remark in PNR GDS Response with below data
      | RAC |
    And Validate the "Currency" Remark in PNR GDS Response with below data
      | No;GBP |
    And Validate the "ItineraryID" Remark in PNR GDS Response with below data
      |  |
    And Validate the "ConfermaID" Remark in PNR GDS Response with below data
      | RADISSON BLU EDWARDIAN |
    And Validate the "ConfirmationNumBC" Remark in PNR GDS Response
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                                          | check-In | check-Out | HotelName                                                                                                                                      | PaymentMode         | PaymentType                  | HotelCommunication | HotelCommunicationCancel |
      | Amadeus | UXON3Z | TA - 1402 - PNR Specs Validation - UK - Amadeus - PAYMENT F - Expedia |       92 |        93 | Radisson Blu Edwardian, Free Trade Hall Peter Street, Free Trade Hall, Manchester, Greater Manchester, United Kingdom, M2 5gp;;;Aggregator;EAN | Client Virtual Card | Client Chargeable Hotel Card | No                 | No                       |

  @TA-1321
  Scenario Outline: TA - 1321 - PNR Specs Validation - UK – Amadeus – PAYMENT F – RoomIt rate
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
    And Capture values from confirmation page
    And Click on PNRLink of BookingConfirmationPage
    And Read data from pop up PNR view
    And Validate the "HotelCityCodeValidateDate" Remark in PNR GDS Response with below data
      | YES |
    And Validate the "SpecialInfo" Remark in PNR GDS Response with below data
      | Yes;No;;;No;;No;; |
    And Validate the "ConfirmationNum" Remark in PNR GDS Response
    And Validate the "BookingStatusCode" Remark in PNR GDS Response with below data
      | HOK;BOOKING CONFIRMED;seqNum |
    And Validate the "PaymentModeType" Remark in PNR GDS Response with below data
      | 3003;R |
    And Validate the "CardType" Remark in PNR GDS Response with below data
      | C |
    And Validate the "PrintVoucher" Remark in PNR GDS Response with below data
      | Y |
    And Validate the "HotelKey" Remark in PNR GDS Response with below data
      | 3008 |
    And Validate the "RoomTypeInfo" Remark in PNR GDS Response with below data
      | ROH |
    And Validate the "VATInfo" Remark in PNR GDS Response with below data
      |  |
    And Validate the "ReferenceNum" Remark in PNR GDS Response with below data
      |  |
    And Validate the "BookingTool" Remark in PNR GDS Response with below data
      | 3311;0HH |
    And Validate the "BookingSrc" Remark in PNR GDS Response with below data
      | 3318;G |
    And Validate the "Commission" Remark in PNR GDS Response with below data
      |  |
    And Validate the "ConfermaID" Remark in PNR GDS Response with below data
      | RADISSON BLU EDWARDIAN |
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                                              | check-In | check-Out | HotelName                                                                                                                            | PaymentMode         | PaymentType                  | HotelCommunication | HotelCommunicationCancel |
      | Amadeus | UXON3Z | TA - 1321 - PNR Specs Validation - UK – Amadeus – PAYMENT F – RoomIt rate |       92 |        93 | Radisson Blu Edwardian, Free Trade Hall Peter Street, Free Trade Hall, Manchester, Greater Manchester, United Kingdom, M2 5gp;;;CWV; | Client Virtual Card | Client Chargeable Hotel Card | No                 | No                       |

  @TA-961
  Scenario Outline: TA-961 - PNR Specs Validation - FR - Amadeus - PAYMENT D - RoomIt rate
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And select the ReasonForNotSending "<ReasonForNotSendingValue>" on SelectTravelerPage
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingReasonValue>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    And Capture values from confirmation page
    And Click on PNRLink of BookingConfirmationPage
    And Read data from pop up PNR view
    And Validate the "HotelCityCodeValidateDate" Remark in PNR GDS Response with below data
      | YES |
    And Validate the "SpecialInfo" Remark in PNR GDS Response with below data
      | Yes;No;;;No;;No;; |
    And Validate the "ConfirmationNum" Remark in PNR GDS Response
    And Validate the "BookingStatusCode" Remark in PNR GDS Response with below data
      | HOK;BOOKING CONFIRMED;seqNum |
    And Validate the "PaymentModeType" Remark in PNR GDS Response with below data
      | 3003;P |
    And Validate the "CardType" Remark in PNR GDS Response with below data
      | W    |
      #And Validate the "PrintVoucher" Remark in PNR GDS Response with below data
      | Y    |
      # And Validate the "HotelKey" Remark in PNR GDS Response with below data
      | 3008 |
    And Validate the "RoomTypeInfo" Remark in PNR GDS Response with below data
      | ROH |
      # And Validate the "VATInfo" Remark in PNR GDS Response with below data
      |     |
      #And Validate the "ReferenceNum" Remark in PNR GDS Response with below data
      |     |
      #And Validate the "HotelRoomRateValidate" Remark in PNR GDS Response with below data
      | YES |
    And Validate the "BookingTool" Remark in PNR GDS Response with below data
      | 3311;0HH |
    And Validate the "BookingSrc" Remark in PNR GDS Response with below data
      | 3318;G |
    And Validate the "Commission" Remark in PNR GDS Response with below data
      |  |
    And Validate the "Currency" Remark in PNR GDS Response with below data
      | No;EUR |
    And Validate the "ConfermaID" Remark in PNR GDS Response with below data
      | RADISSON BLU EDWARDIAN |
    And Validate the "VoucherNumber" Remark in PNR GDS Response with below data
      | 1234567 |
    And Validate the "RealizedSavingCode" Remark in PNR GDS Response with below data
      | 3305;XX |
    And Validate the "VirtualCardDetails" Remark in PNR GDS Response with below data
      | JP |
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And select the ReasonForNotSending "<ReasonForNotSendingCancelValue>" on CancelBooking Page
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingCancelReasonValue>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                                           | check-In | check-Out | HotelName                                                                                                                            | PaymentMode     | HotelCommunication | ReasonForNotSendingValue | ReasonForNotSendingReasonValue | HotelCommunicationCancel | ReasonForNotSendingCancelValue | ReasonForNotSendingCancelReasonValue |
      | Amadeus | TY4IKN | TA-961 - PNR Specs Validation - FR - Amadeus - PAYMENT D - RoomIt rate |       90 |        91 | Radisson Blu Edwardian, Free Trade Hall Peter Street, Free Trade Hall, Manchester, Greater Manchester, United Kingdom, M2 5gp;;;CWV; | Agency BillBack | No                 | Other                    | Test booking                   | No                       | Other                          | Test Booking                         |

  @TA-1079
  Scenario Outline: TA-1079 - PNR Specs Validation - FR - Amadeus - PAYMENT D - RoomIt rate modification
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
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
    And Capture values from confirmation page
    And Click on PNRLink of BookingConfirmationPage
    And Read data from pop up PNR view
    And Validate the "HotelCityCodeValidateDate" Remark in PNR GDS Response with below data
      | YES |
    And Validate the "SpecialInfo" Remark in PNR GDS Response with below data
      | Yes;No;;;No;;No;; |
    And Validate the "ConfirmationNum" Remark in PNR GDS Response
    And Validate the "BookingStatusCode" Remark in PNR GDS Response with below data
      | MOD;BOOKING MODIFIED;seqNum |
    And Validate the "PaymentModeType" Remark in PNR GDS Response with below data
      | 3003;P |
    And Validate the "CardType" Remark in PNR GDS Response with below data
      | W    |
      #And Validate the "PrintVoucher" Remark in PNR GDS Response with below data
      | Y    |
      # And Validate the "HotelKey" Remark in PNR GDS Response with below data
      | 3008 |
    And Validate the "RoomTypeInfo" Remark in PNR GDS Response with below data
      | ROH |
      # And Validate the "VATInfo" Remark in PNR GDS Response with below data
      |     |
      #And Validate the "ReferenceNum" Remark in PNR GDS Response with below data
      |     |
      #And Validate the "HotelRoomRateValidate" Remark in PNR GDS Response with below data
      | YES |
    And Validate the "BookingTool" Remark in PNR GDS Response with below data
      | 3311;0HH |
    And Validate the "BookingSrc" Remark in PNR GDS Response with below data
      | 3318;G |
    And Validate the "Commission" Remark in PNR GDS Response with below data
      |  |
    And Validate the "Currency" Remark in PNR GDS Response with below data
      | No;EUR |
    And Validate the "ConfermaID" Remark in PNR GDS Response with below data
      | JURYS INN GLASGOW |
    And Validate the "VoucherNumber" Remark in PNR GDS Response with below data
      | 1234567 |
    And Validate the "RealizedSavingCode" Remark in PNR GDS Response with below data
      | 3305;XX |
    And Validate the "VirtualCardDetails" Remark in PNR GDS Response with below data
      | JP |
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And select the ReasonForNotSending "<ReasonForNotSendingCancelValue>" on CancelBooking Page
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingCancelReasonValue>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                                                         | check-In | check-Out | HotelName                                                                                 | PaymentMode     | HotelCommunication | ReasonForNotSendingValue | ReasonForNotSendingReasonValue | rate | HotelCommunicationModify | ReasonForNotSendingModifyValue | HotelCommunicationCancel | ReasonForNotSendingCancelValue | ReasonForNotSendingCancelReasonValue |
      | Amadeus | TY4IKN | TA-1079 - PNR Specs Validation - FR - Amadeus - PAYMENT D - RoomIt rate modification |       90 |        91 | Jurys Inn Glasgow, 80 Jamaica Street, Glasgow, Strathclyde, United Kingdom, G1 4qg;;;CWV; | Agency BillBack | No                 | Other                    | Test booking                   | CWV  | No                       | Confirmation already received  | No                       | Other                          | Test Booking                         |

  @TA-962
  Scenario Outline: TA-962 - PNR Specs Validation: FR – Amadeus – PAYMENT D – Booking.com
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    And user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And select the ReasonForNotSending "<ReasonForNotSendingValue>" on SelectTravelerPage
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingReasonValue>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    And Capture values from confirmation page
    And Click on PNRLink of BookingConfirmationPage
    And Read data from pop up PNR view
    And Validate the "HotelCityCodeValidateDate" Remark in PNR GDS Response with below data
      | YES |
    And Validate the "SpecialInfo" Remark in PNR GDS Response with below data
      | Yes;Yes;PAID BY CWT CC;No;No;;Yes;BOOKING.COM; |
    And Validate the "ConfirmationNum" Remark in PNR GDS Response
    And Validate the "BookingStatusCode" Remark in PNR GDS Response with below data
      | HOK;BOOKING CONFIRMED;seqNum |
    And Validate the "PaymentModeType" Remark in PNR GDS Response with below data
      | 3003;P |
    And Validate the "CardType" Remark in PNR GDS Response with below data
      | W |
      #And Validate the "PrintVoucher" Remark in PNR GDS Response with below data
      | Y |
    And Validate the "HotelKey" Remark in PNR GDS Response with below data
      | 3008 |
    And Validate the "RoomTypeInfo" Remark in PNR GDS Response with below data
      | ROH |
      # And Validate the "VATInfo" Remark in PNR GDS Response with below data
      |     |
      #And Validate the "ReferenceNum" Remark in PNR GDS Response with below data
      |     |
    And Validate the "BookingTool" Remark in PNR GDS Response with below data
      | 3311;0HH |
    And Validate the "BookingSrc" Remark in PNR GDS Response with below data
      | 3318;B |
    And Validate the "Commission" Remark in PNR GDS Response with below data
      |  |
    And Validate the "HotelRoomRateValidate" Remark in PNR GDS Response with below data
      |  |
    And Validate the "LowRoomRateValidate" Remark in PNR GDS Response with below data
      |  |
    And Validate the "RoomRateType" Remark in PNR GDS Response with below data
      | RAC |
    And Validate the "Currency" Remark in PNR GDS Response with below data
      | No;EUR |
    And Validate the "BookingPin" Remark in PNR GDS Response
    And Validate the "ConfermaID" Remark in PNR GDS Response with below data
      | AFFILIATE TEST HOTEL |
    And Validate the "ConfirmationNumBC" Remark in PNR GDS Response
    And Validate the "VoucherNumber" Remark in PNR GDS Response with below data
      | 1234567 |
    And Validate the "RealizedSavingCode" Remark in PNR GDS Response with below data
      | 3305;XX |
    And Validate the "VirtualCardDetails" Remark in PNR GDS Response with below data
      | JP |
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And select the ReasonForNotSending "<ReasonForNotSendingCancelValue>" on CancelBooking Page
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingCancelReasonValue>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                                          | check-In | check-Out | HotelName                                                                             | PaymentMode     | HotelCommunication | ReasonForNotSendingValue | ReasonForNotSendingReasonValue | HotelCommunicationCancel | ReasonForNotSendingCancelValue | ReasonForNotSendingCancelReasonValue |
      | Amadeus | TY4IKN | TA-962 - PNR Specs Validation: FR – Amadeus – PAYMENT D – Booking.com |       90 |        91 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | Agency BillBack | No                 | Other                    | Test booking                   | No                       | Other                          | Test Booking                         |

  @TA-1105
  Scenario Outline: TA-1105 - PNR Specs Validation - FR - Amadeus - PAYMENT A - RoomIt rate
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
    And Capture values from confirmation page
    And Click on PNRLink of BookingConfirmationPage
    And Read data from pop up PNR view
    And Validate the "HotelCityCodeValidateDate" Remark in PNR GDS Response with below data
      | YES |
    And Validate the "SpecialInfo" Remark in PNR GDS Response with below data
      | Yes;No;;Yes;No;;No;; |
    And Validate the "ConfirmationNum" Remark in PNR GDS Response
    And Validate the "BookingStatusCode" Remark in PNR GDS Response with below data
      | HOK;BOOKING CONFIRMED;seqNum |
      #And Validate the "PaymentModeType" Remark in PNR GDS Response with below data
      | 3003;P                       |
      #And Validate the "CardType" Remark in PNR GDS Response with below data
      | W                            |
      #And Validate the "PrintVoucher" Remark in PNR GDS Response with below data
      | Y                            |
      # And Validate the "HotelKey" Remark in PNR GDS Response with below data
      |                         3008 |
    And Validate the "RoomTypeInfo" Remark in PNR GDS Response with below data
      | ROH |
      # And Validate the "VATInfo" Remark in PNR GDS Response with below data
      |     |
      #And Validate the "ReferenceNum" Remark in PNR GDS Response with below data
      |     |
      #And Validate the "HotelRoomRateValidate" Remark in PNR GDS Response with below data
      | YES |
    And Validate the "BookingTool" Remark in PNR GDS Response with below data
      | 3311;0HH |
    And Validate the "BookingSrc" Remark in PNR GDS Response with below data
      | 3318;G |
    And Validate the "Commission" Remark in PNR GDS Response with below data
      |                        |
      #And Validate the "Currency" Remark in PNR GDS Response with below data
      | No;EUR                 |
      #And Validate the "ConfermaID" Remark in PNR GDS Response with below data
      | RADISSON BLU EDWARDIAN |
      #And Validate the "VoucherNumber" Remark in PNR GDS Response with below data
      |                1234567 |
    And Validate the "RealizedSavingCode" Remark in PNR GDS Response with below data
      | 3305;XX |
      #And Validate the "VirtualCardDetails" Remark in PNR GDS Response with below data
      | JP      |
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                                            | check-In | check-Out | HotelName                                                                                                                       | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Amadeus | TY4IKN | TA-1105 - PNR Specs Validation - FR - Amadeus - PAYMENT A - RoomIt rate |       90 |        91 | Radisson Blu Sussex London, 19 25 Granville Place Marble A, Marble Arch, London, Greater London, United Kingdom, W1h 6pa;;;CWV; | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |

  @TA-1110
  Scenario Outline: TA-1110 - PNR Specs Validation - FR – Amadeus – PAYMENT A – RoomIt rate modification
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
    And user click on Modify button on BookingConfirmationPage
    Then user should redirect to ModifyBooking Page
    And user click on ModifyCheckInAndCheckOut link on ModifyBooking Page
    And user change the Check-In and Check-Out Date on ModifyBooking Page
    And user select the rate "<rate>" on ModifyBooking Page
    And select the HotelCommunication "<HotelCommunicationModify>" on ModifyBooking Page
    And user click on ModifyBooking button
    Then user should redirect to BookingConfirmationPage
    Then Booking should be created successfully
    And Capture values from confirmation page
    And Click on PNRLink of BookingConfirmationPage
    And Read data from pop up PNR view
    And Validate the "HotelCityCodeValidateDate" Remark in PNR GDS Response with below data
      | YES |
    And Validate the "SpecialInfo" Remark in PNR GDS Response with below data
      | Yes;No;;Yes;No;;No;; |
    And Validate the "ConfirmationNum" Remark in PNR GDS Response
    And Validate the "BookingStatusCode" Remark in PNR GDS Response with below data
      | MOD;BOOKING MODIFIED;seqNum |
      #And Validate the "PaymentModeType" Remark in PNR GDS Response with below data
      | 3003;P                      |
      #And Validate the "CardType" Remark in PNR GDS Response with below data
      | W                           |
      #And Validate the "PrintVoucher" Remark in PNR GDS Response with below data
      | Y                           |
      # And Validate the "HotelKey" Remark in PNR GDS Response with below data
      |                        3008 |
    And Validate the "RoomTypeInfo" Remark in PNR GDS Response with below data
      | ROH |
      # And Validate the "VATInfo" Remark in PNR GDS Response with below data
      |     |
      #And Validate the "ReferenceNum" Remark in PNR GDS Response with below data
      |     |
      #And Validate the "HotelRoomRateValidate" Remark in PNR GDS Response with below data
      | YES |
    And Validate the "BookingTool" Remark in PNR GDS Response with below data
      | 3311;0HH |
    And Validate the "BookingSrc" Remark in PNR GDS Response with below data
      | 3318;G |
    And Validate the "Commission" Remark in PNR GDS Response with below data
      |                        |
      #And Validate the "Currency" Remark in PNR GDS Response with below data
      | No;EUR                 |
      #And Validate the "ConfermaID" Remark in PNR GDS Response with below data
      | RADISSON BLU EDWARDIAN |
      #And Validate the "VoucherNumber" Remark in PNR GDS Response with below data
      |                1234567 |
    And Validate the "RealizedSavingCode" Remark in PNR GDS Response with below data
      | 3305;XX |
      #And Validate the "VirtualCardDetails" Remark in PNR GDS Response with below data
      | JP      |
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                                                         | check-In | check-Out | HotelName                                                                                                                       | PaymentMode      | PaymentType                         | HotelCommunication | rate              | HotelCommunicationModify | HotelCommunicationCancel |
      | Amadeus | TY4IKN | TA-1110 - PNR Specs Validation - FR – Amadeus – PAYMENT A – RoomIt rate modification |       90 |        91 | Radisson Blu Sussex London, 19 25 Granville Place Marble A, Marble Arch, London, Greater London, United Kingdom, W1h 6pa;;;CWV; | Pay on departure | Pay on departure - Visa ending 0002 | No                 | RoomIt rates;CWV; | No                       | No                       |

  @TA-963
  Scenario Outline: TA-963 - PNR Specs Validation - FR - Amadeus - PAYMENT D – Booking.com modification
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
    And select the HotelCommunication "<HotelCommunicationModify>" on ModifyBooking Page
    And select the ReasonForNotSending "<ReasonForNotSendingModifyValue>" on ModifyBooking Page
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingModifyReasonValue>" on ModifyBooking Page
    And user click on ModifyBooking button
    Then user should redirect to BookingConfirmationPage
    Then Booking should be created successfully
    And Capture values from confirmation page
    And Click on PNRLink of BookingConfirmationPage
    And Read data from pop up PNR view
    And Validate the "HotelCityCodeValidateDate" Remark in PNR GDS Response with below data
      | YES |
    And Validate the "SpecialInfo" Remark in PNR GDS Response with below data
      | Yes;Yes;PAID BY CWT CC;No;No;;Yes;BOOKING.COM; |
    And Validate the "ConfirmationNum" Remark in PNR GDS Response
    And Validate the "BookingStatusCode" Remark in PNR GDS Response with below data
      | MOD;BOOKING MODIFIED;seqNum |
    And Validate the "PaymentModeType" Remark in PNR GDS Response with below data
      | 3003;P |
    And Validate the "CardType" Remark in PNR GDS Response with below data
      | W |
      #And Validate the "PrintVoucher" Remark in PNR GDS Response with below data
      | Y |
    And Validate the "HotelKey" Remark in PNR GDS Response with below data
      | 3008 |
    And Validate the "RoomTypeInfo" Remark in PNR GDS Response with below data
      | ROH |
      # And Validate the "VATInfo" Remark in PNR GDS Response with below data
      |     |
      #And Validate the "ReferenceNum" Remark in PNR GDS Response with below data
      |     |
    And Validate the "BookingTool" Remark in PNR GDS Response with below data
      | 3311;0HH |
    And Validate the "BookingSrc" Remark in PNR GDS Response with below data
      | 3318;B |
    And Validate the "Commission" Remark in PNR GDS Response with below data
      |  |
    And Validate the "HotelRoomRateValidate" Remark in PNR GDS Response with below data
      |  |
    And Validate the "LowRoomRateValidate" Remark in PNR GDS Response with below data
      | YES |
    And Validate the "RoomRateType" Remark in PNR GDS Response with below data
      | RAC |
    And Validate the "Currency" Remark in PNR GDS Response with below data
      | No;EUR |
    And Validate the "BookingPin" Remark in PNR GDS Response
    And Validate the "ConfermaID" Remark in PNR GDS Response with below data
      | AFFILIATE TEST HOTEL |
    And Validate the "ConfirmationNumBC" Remark in PNR GDS Response
    And Validate the "VoucherNumber" Remark in PNR GDS Response with below data
      | 1234567 |
    And Validate the "RealizedSavingCode" Remark in PNR GDS Response with below data
      | 3305;XX |
    And Validate the "VirtualCardDetails" Remark in PNR GDS Response with below data
      | JP |
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And select the ReasonForNotSending "<ReasonForNotSendingCancelValue>" on CancelBooking Page
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingCancelReasonValue>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                                                        | check-In | check-Out | HotelName                                                                             | PaymentMode     | HotelCommunication | ReasonForNotSendingValue | ReasonForNotSendingReasonValue | rate          | HotelCommunicationModify | ReasonForNotSendingModifyValue | ReasonForNotSendingModifyReasonValue | HotelCommunicationCancel | ReasonForNotSendingCancelValue | ReasonForNotSendingCancelReasonValue |
      | Amadeus | TY4IKN | TA-963 - PNR Specs Validation - FR - Amadeus - PAYMENT D – Booking.com modification |       90 |        91 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | Agency BillBack | No                 | Other                    | Test booking                   | Aggregator;BC | No                       | Other                          | Test Booking                         | No                       | Other                          | Test Booking                         |

  @TA-964
  Scenario Outline: TA - 964 - PNR Specs Validation - FR – Amadeus – PAYMENT D – Expedia
    Given user is on HotelSearchPage for "<TestCaseName>" and "<PNR>"
    When user select the "<GDS>" and enter the "<PNR>" for "<TestCaseName>"
    And select the "<check-In>" and "<check-Out>" on HotelSearchPage
    And select the hotel "<HotelName>" and rate on HotelSearchPage
    Then user should redirect to SelectTravelerPage
    #When user click on ContactInfo and NotificationEmail option on SelectTravelerPage
    When user select the PaymentMode "<PaymentMode>" on SelectTravelerPage
    And select the HotelCommunication "<HotelCommunication>" on SelectTravelerPage
    And select the ReasonForNotSending "<ReasonForNotSendingValue>" on SelectTravelerPage
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingReasonValue>" on SelectTravelerPage
    And click on ConfirmBooking Button on SelectTravelerPage
    Then user should redirect to BookingConfirmationPage
    And Booking should be created successfully
    And Capture values from confirmation page
    And Click on PNRLink of BookingConfirmationPage
    And Read data from pop up PNR view
    And Validate the "HotelCityCodeValidateDate" Remark in PNR GDS Response with below data
      | YES |
    And Validate the "SpecialInfo" Remark in PNR GDS Response with below data
      | Yes;Yes;PAID BY CWT CC;No;No;;Yes;EXPEDIA; |
    And Validate the "ConfirmationNum" Remark in PNR GDS Response
    And Validate the "BookingStatusCode" Remark in PNR GDS Response with below data
      | HOK;BOOKING CONFIRMED;seqNum |
    And Validate the "PaymentModeType" Remark in PNR GDS Response with below data
      | 3003;P |
    And Validate the "CardType" Remark in PNR GDS Response with below data
      | W |
      #And Validate the "PrintVoucher" Remark in PNR GDS Response with below data
      | Y |
    And Validate the "HotelKey" Remark in PNR GDS Response with below data
      | 3008 |
    And Validate the "RoomTypeInfo" Remark in PNR GDS Response with below data
      | ROH |
      # And Validate the "VATInfo" Remark in PNR GDS Response with below data
      |     |
      #And Validate the "ReferenceNum" Remark in PNR GDS Response with below data
      |     |
    And Validate the "BookingTool" Remark in PNR GDS Response with below data
      | 3311;0HH |
    And Validate the "BookingSrc" Remark in PNR GDS Response with below data
      | 3318;X |
    And Validate the "Commission" Remark in PNR GDS Response with below data
      |  |
    And Validate the "LowRoomRateValidate" Remark in PNR GDS Response with below data
      | YES |
    And Validate the "HotelRoomRateValidate" Remark in PNR GDS Response with below data
      |  |
    And Validate the "RoomRateType" Remark in PNR GDS Response with below data
      | RAC |
    And Validate the "Currency" Remark in PNR GDS Response with below data
      | No;EUR |
    #And Validate the "BookingPin" Remark in PNR GDS Response
    And Validate the "ItineraryID" Remark in PNR GDS Response with below data
      |  |
    And Validate the "ConfermaID" Remark in PNR GDS Response with below data
      | LE MERIDIEN NICE |
    And Validate the "ConfirmationNumBC" Remark in PNR GDS Response
    And Validate the "RealizedSavingCode" Remark in PNR GDS Response with below data
      | 3305;XX |
    And Validate the "VirtualCardDetails" Remark in PNR GDS Response with below data
      | JP |
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And select the ReasonForNotSending "<ReasonForNotSendingCancelValue>" on CancelBooking Page
    And enter the ReasonForNotSendingReason "<ReasonForNotSendingCancelReasonValue>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                                         | check-In | check-Out | HotelName                                                                       | PaymentMode     | HotelCommunication | ReasonForNotSendingValue | ReasonForNotSendingReasonValue | HotelCommunicationCancel | ReasonForNotSendingCancelValue | ReasonForNotSendingCancelReasonValue |
      | Amadeus | TY4KSW | TA - 964 - PNR Specs Validation - FR – Amadeus – PAYMENT D – Expedia |       90 |        91 | Le Meridien Nice, 1 Promenade Des Anglais, Nice, France, 06046;;;Aggregator;EAN | Agency BillBack | No                 | Other                    | Test booking                   | No                       | Other                          | Test Booking                         |

  @TA-1126
  Scenario Outline: TA-1126 - PNR Specs Validation: FR – Amadeus – PAYMENT A – Booking.com
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
    And Capture values from confirmation page
    And Click on PNRLink of BookingConfirmationPage
    And Read data from pop up PNR view
    And Validate the "HotelCityCodeValidateDate" Remark in PNR GDS Response with below data
      | YES |
    And Validate the "SpecialInfo" Remark in PNR GDS Response with below data
      | Yes;No;;No;No;;Yes;BOOKING.COM; |
    And Validate the "ConfirmationNum" Remark in PNR GDS Response
    And Validate the "BookingStatusCode" Remark in PNR GDS Response with below data
      | HOK;BOOKING CONFIRMED;seqNum |                       |
    And Validate the "HotelKey" Remark in PNR GDS Response with below data
      | 3008 |
    And Validate the "RoomTypeInfo" Remark in PNR GDS Response with below data
      | ROH |
    And Validate the "BookingTool" Remark in PNR GDS Response with below data
      | 3311;0HH |
    And Validate the "BookingSrc" Remark in PNR GDS Response with below data
      | 3318;B |
    And Validate the "Commission" Remark in PNR GDS Response with below data
      |  |
    And Validate the "LowRoomRateValidate" Remark in PNR GDS Response with below data
      |  |
    And Validate the "HotelRoomRateValidate" Remark in PNR GDS Response with below data
      |  |
    And Validate the "RoomRateType" Remark in PNR GDS Response with below data
      | RAC |
    And Validate the "Currency" Remark in PNR GDS Response with below data
      | No;USD |
    And Validate the "BookingPin" Remark in PNR GDS Response
    And Validate the "ConfirmationNumBC" Remark in PNR GDS Response
    And Validate the "RealizedSavingCode" Remark in PNR GDS Response with below data
      | 3305;XX |
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully

    Examples: 
      | GDS     | PNR    | TestCaseName                                                           | check-In | check-Out | HotelName                                                                             | PaymentMode      | PaymentType                         | HotelCommunication | HotelCommunicationCancel |
      | Amadeus | L3G8J9 | TA-1126 - PNR Specs Validation: FR – Amadeus – PAYMENT A – Booking.com |       90 |        91 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | Pay on departure | Pay on departure - Visa ending 0002 | No                 | No                       |
      
      
      
      
      @TA-1127
  Scenario Outline: TA-1127 - PNR Specs Validation: FR – Amadeus – PAYMENT A – Booking.com modification
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
    And Capture values from confirmation page
    And Click on PNRLink of BookingConfirmationPage
    And Read data from pop up PNR view
    And Validate the "HotelCityCodeValidateDate" Remark in PNR GDS Response with below data
      | YES |
    And Validate the "SpecialInfo" Remark in PNR GDS Response with below data
      | Yes;No;;No;No;;Yes;BOOKING.COM; |
    And Validate the "ConfirmationNum" Remark in PNR GDS Response
    And Validate the "BookingStatusCode" Remark in PNR GDS Response with below data
      | MOD;BOOKING MODIFIED;seqNum |                       |
    And Validate the "HotelKey" Remark in PNR GDS Response with below data
      | 3008 |
    And Validate the "RoomTypeInfo" Remark in PNR GDS Response with below data
      | ROH |
    And Validate the "BookingTool" Remark in PNR GDS Response with below data
      | 3311;0HH |
    And Validate the "BookingSrc" Remark in PNR GDS Response with below data
      | 3318;B |
    And Validate the "Commission" Remark in PNR GDS Response with below data
      |  |
    And Validate the "LowRoomRateValidate" Remark in PNR GDS Response with below data
      |  |
    And Validate the "HotelRoomRateValidate" Remark in PNR GDS Response with below data
      |  |
    And Validate the "RoomRateType" Remark in PNR GDS Response with below data
      | RAC |
    And Validate the "Currency" Remark in PNR GDS Response with below data
      | No;USD |
    And Validate the "BookingPin" Remark in PNR GDS Response
    And Validate the "ConfirmationNumBC" Remark in PNR GDS Response
    And Validate the "RealizedSavingCode" Remark in PNR GDS Response with below data
      | 3305;XX |
    And user click on Cancel button on BookingConfirmationPage
    Then user should redirect to CancelBooking Page
    When user select the HotelCommunication "<HotelCommunicationCancel>" on CancelBooking Page
    And user click on ContinueBooking button on CancelBooking Page
    Then user should redirect to BookingConfirmationPage
    And Booking should be cancelled successfully
    
    Examples: 
      | GDS     | PNR    | TestCaseName                                            | check-In | check-Out | HotelName                                                                             | PaymentMode      | PaymentType                         | HotelCommunication | rate          | HotelCommunicationModify | HotelCommunicationCancel |
      | Amadeus | L3G8J9 | TA-1127 - PNR Specs Validation: FR – Amadeus – PAYMENT A – Booking.com modification |       90 |        91 | AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC | Pay on departure | Pay on departure - Visa ending 0002 | No                 | Aggregator;BC | No                       | No                       |
    
