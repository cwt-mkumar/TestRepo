$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("src/main/java/features/PaymentModeA.Feature");
formatter.feature({
  "line": 1,
  "name": "Payment Mode A test cases",
  "description": "",
  "id": "payment-mode-a-test-cases",
  "keyword": "Feature"
});
formatter.scenarioOutline({
  "line": 212,
  "name": "TA-4 - Modification flow - US - Sabre - Booking.com",
  "description": "",
  "id": "payment-mode-a-test-cases;ta-4---modification-flow---us---sabre---booking.com",
  "type": "scenario_outline",
  "keyword": "Scenario Outline",
  "tags": [
    {
      "line": 211,
      "name": "@TA-4"
    }
  ]
});
formatter.step({
  "line": 213,
  "name": "user is on HotelSearchPage for \"\u003cTestCaseName\u003e\" and \"\u003cPNR\u003e\"",
  "keyword": "Given "
});
formatter.step({
  "line": 214,
  "name": "user select the \"\u003cGDS\u003e\" and enter the \"\u003cPNR\u003e\" for \"\u003cTestCaseName\u003e\"",
  "keyword": "When "
});
formatter.step({
  "line": 215,
  "name": "select the \"\u003ccheck-In\u003e\" and \"\u003ccheck-Out\u003e\" on HotelSearchPage",
  "keyword": "And "
});
formatter.step({
  "line": 216,
  "name": "select the hotel \"\u003cHotelName\u003e\" and rate on HotelSearchPage",
  "keyword": "And "
});
formatter.step({
  "line": 217,
  "name": "user should redirect to SelectTravelerPage",
  "keyword": "Then "
});
formatter.step({
  "comments": [
    {
      "line": 218,
      "value": "#When user click on ContactInfo and NotificationEmail option on SelectTravelerPage"
    }
  ],
  "line": 219,
  "name": "user select the PaymentMode \"\u003cPaymentMode\u003e\" on SelectTravelerPage",
  "keyword": "When "
});
formatter.step({
  "line": 220,
  "name": "select the PaymentType \"\u003cPaymentType\u003e\" on SelectTravelerPage",
  "keyword": "And "
});
formatter.step({
  "line": 221,
  "name": "select the HotelCommunication \"\u003cHotelCommunication\u003e\" on SelectTravelerPage",
  "keyword": "And "
});
formatter.step({
  "line": 222,
  "name": "click on ConfirmBooking Button on SelectTravelerPage",
  "keyword": "And "
});
formatter.step({
  "line": 223,
  "name": "user should redirect to BookingConfirmationPage",
  "keyword": "Then "
});
formatter.step({
  "line": 224,
  "name": "Booking should be created successfully",
  "keyword": "And "
});
formatter.step({
  "line": 225,
  "name": "user click on ViewBooking button on BookingConfirmationPage",
  "keyword": "When "
});
formatter.step({
  "line": 226,
  "name": "user click on Modify button on BookingConfirmationPage",
  "keyword": "And "
});
formatter.step({
  "line": 227,
  "name": "user should redirect to ModifyBooking Page",
  "keyword": "Then "
});
formatter.step({
  "line": 228,
  "name": "user click on ModifyCheckInAndCheckOut link on ModifyBooking Page",
  "keyword": "And "
});
formatter.step({
  "line": 229,
  "name": "user change the Check-In and Check-Out Date on ModifyBooking Page",
  "keyword": "And "
});
formatter.step({
  "line": 230,
  "name": "user select the rate \"\u003crate\u003e\" on ModifyBooking Page",
  "keyword": "And "
});
formatter.step({
  "line": 231,
  "name": "select the HotelCommunication \"\u003cHotelCommunicationModify\u003e\" on ModifyBooking Page",
  "keyword": "And "
});
formatter.step({
  "line": 232,
  "name": "user click on ModifyBooking button",
  "keyword": "And "
});
formatter.step({
  "line": 233,
  "name": "user should redirect to BookingConfirmationPage",
  "keyword": "Then "
});
formatter.step({
  "line": 234,
  "name": "Booking should be created successfully",
  "keyword": "Then "
});
formatter.step({
  "line": 235,
  "name": "user verify the error message on BookingConfirmationPage",
  "keyword": "And "
});
formatter.step({
  "line": 236,
  "name": "user click on ViewBooking button on BookingConfirmationPage",
  "keyword": "When "
});
formatter.step({
  "line": 237,
  "name": "user click on Cancel button on BookingConfirmationPage",
  "keyword": "And "
});
formatter.step({
  "line": 238,
  "name": "user should redirect to CancelBooking Page",
  "keyword": "Then "
});
formatter.step({
  "line": 239,
  "name": "user select the HotelCommunication \"\u003cHotelCommunicationCancel\u003e\" on CancelBooking Page",
  "keyword": "When "
});
formatter.step({
  "line": 240,
  "name": "user click on ContinueBooking button on CancelBooking Page",
  "keyword": "And "
});
formatter.step({
  "line": 241,
  "name": "user should redirect to BookingConfirmationPage",
  "keyword": "Then "
});
formatter.step({
  "line": 242,
  "name": "Booking should be cancelled successfully",
  "keyword": "And "
});
formatter.examples({
  "line": 244,
  "name": "",
  "description": "",
  "id": "payment-mode-a-test-cases;ta-4---modification-flow---us---sabre---booking.com;",
  "rows": [
    {
      "cells": [
        "GDS",
        "PNR",
        "TestCaseName",
        "check-In",
        "check-Out",
        "HotelName",
        "PaymentMode",
        "PaymentType",
        "HotelCommunication",
        "rate",
        "HotelCommunicationModify",
        "HotelCommunicationCancel"
      ],
      "line": 245,
      "id": "payment-mode-a-test-cases;ta-4---modification-flow---us---sabre---booking.com;;1"
    },
    {
      "cells": [
        "Sabre",
        "DYQISA",
        "TA-4 - Modification flow - US - Sabre - Booking.com",
        "90",
        "91",
        "AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC",
        "Pay on departure",
        "Pay on departure - Visa ending 0002",
        "No",
        "Aggregator;BC",
        "No",
        "No"
      ],
      "line": 246,
      "id": "payment-mode-a-test-cases;ta-4---modification-flow---us---sabre---booking.com;;2"
    }
  ],
  "keyword": "Examples"
});
formatter.scenario({
  "line": 246,
  "name": "TA-4 - Modification flow - US - Sabre - Booking.com",
  "description": "",
  "id": "payment-mode-a-test-cases;ta-4---modification-flow---us---sabre---booking.com;;2",
  "type": "scenario",
  "keyword": "Scenario Outline",
  "tags": [
    {
      "line": 211,
      "name": "@TA-4"
    }
  ]
});
formatter.step({
  "line": 213,
  "name": "user is on HotelSearchPage for \"TA-4 - Modification flow - US - Sabre - Booking.com\" and \"DYQISA\"",
  "matchedColumns": [
    1,
    2
  ],
  "keyword": "Given "
});
formatter.step({
  "line": 214,
  "name": "user select the \"Sabre\" and enter the \"DYQISA\" for \"TA-4 - Modification flow - US - Sabre - Booking.com\"",
  "matchedColumns": [
    0,
    1,
    2
  ],
  "keyword": "When "
});
formatter.step({
  "line": 215,
  "name": "select the \"90\" and \"91\" on HotelSearchPage",
  "matchedColumns": [
    3,
    4
  ],
  "keyword": "And "
});
formatter.step({
  "line": 216,
  "name": "select the hotel \"AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC\" and rate on HotelSearchPage",
  "matchedColumns": [
    5
  ],
  "keyword": "And "
});
formatter.step({
  "line": 217,
  "name": "user should redirect to SelectTravelerPage",
  "keyword": "Then "
});
formatter.step({
  "comments": [
    {
      "line": 218,
      "value": "#When user click on ContactInfo and NotificationEmail option on SelectTravelerPage"
    }
  ],
  "line": 219,
  "name": "user select the PaymentMode \"Pay on departure\" on SelectTravelerPage",
  "matchedColumns": [
    6
  ],
  "keyword": "When "
});
formatter.step({
  "line": 220,
  "name": "select the PaymentType \"Pay on departure - Visa ending 0002\" on SelectTravelerPage",
  "matchedColumns": [
    7
  ],
  "keyword": "And "
});
formatter.step({
  "line": 221,
  "name": "select the HotelCommunication \"No\" on SelectTravelerPage",
  "matchedColumns": [
    8
  ],
  "keyword": "And "
});
formatter.step({
  "line": 222,
  "name": "click on ConfirmBooking Button on SelectTravelerPage",
  "keyword": "And "
});
formatter.step({
  "line": 223,
  "name": "user should redirect to BookingConfirmationPage",
  "keyword": "Then "
});
formatter.step({
  "line": 224,
  "name": "Booking should be created successfully",
  "keyword": "And "
});
formatter.step({
  "line": 225,
  "name": "user click on ViewBooking button on BookingConfirmationPage",
  "keyword": "When "
});
formatter.step({
  "line": 226,
  "name": "user click on Modify button on BookingConfirmationPage",
  "keyword": "And "
});
formatter.step({
  "line": 227,
  "name": "user should redirect to ModifyBooking Page",
  "keyword": "Then "
});
formatter.step({
  "line": 228,
  "name": "user click on ModifyCheckInAndCheckOut link on ModifyBooking Page",
  "keyword": "And "
});
formatter.step({
  "line": 229,
  "name": "user change the Check-In and Check-Out Date on ModifyBooking Page",
  "keyword": "And "
});
formatter.step({
  "line": 230,
  "name": "user select the rate \"Aggregator;BC\" on ModifyBooking Page",
  "matchedColumns": [
    9
  ],
  "keyword": "And "
});
formatter.step({
  "line": 231,
  "name": "select the HotelCommunication \"No\" on ModifyBooking Page",
  "matchedColumns": [
    10
  ],
  "keyword": "And "
});
formatter.step({
  "line": 232,
  "name": "user click on ModifyBooking button",
  "keyword": "And "
});
formatter.step({
  "line": 233,
  "name": "user should redirect to BookingConfirmationPage",
  "keyword": "Then "
});
formatter.step({
  "line": 234,
  "name": "Booking should be created successfully",
  "keyword": "Then "
});
formatter.step({
  "line": 235,
  "name": "user verify the error message on BookingConfirmationPage",
  "keyword": "And "
});
formatter.step({
  "line": 236,
  "name": "user click on ViewBooking button on BookingConfirmationPage",
  "keyword": "When "
});
formatter.step({
  "line": 237,
  "name": "user click on Cancel button on BookingConfirmationPage",
  "keyword": "And "
});
formatter.step({
  "line": 238,
  "name": "user should redirect to CancelBooking Page",
  "keyword": "Then "
});
formatter.step({
  "line": 239,
  "name": "user select the HotelCommunication \"No\" on CancelBooking Page",
  "matchedColumns": [
    11
  ],
  "keyword": "When "
});
formatter.step({
  "line": 240,
  "name": "user click on ContinueBooking button on CancelBooking Page",
  "keyword": "And "
});
formatter.step({
  "line": 241,
  "name": "user should redirect to BookingConfirmationPage",
  "keyword": "Then "
});
formatter.step({
  "line": 242,
  "name": "Booking should be cancelled successfully",
  "keyword": "And "
});
formatter.match({
  "arguments": [
    {
      "val": "TA-4 - Modification flow - US - Sabre - Booking.com",
      "offset": 32
    },
    {
      "val": "DYQISA",
      "offset": 90
    }
  ],
  "location": "PaymentModeA.user_is_on_HotelSearchPage_for_and(String,String)"
});
formatter.result({
  "duration": 29384616829,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "Sabre",
      "offset": 17
    },
    {
      "val": "DYQISA",
      "offset": 39
    },
    {
      "val": "TA-4 - Modification flow - US - Sabre - Booking.com",
      "offset": 52
    }
  ],
  "location": "PaymentModeA.user_select_the_and_enter_the_for(String,String,String)"
});
formatter.result({
  "duration": 15768862070,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "90",
      "offset": 12
    },
    {
      "val": "91",
      "offset": 21
    }
  ],
  "location": "PaymentModeA.select_the_and_on_HotelSearchPage(String,String)"
});
formatter.result({
  "duration": 10012790513,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "AFFILIATE TEST HOTEL, SWAZISTREET 4, BUENOS AIRES, ARGENTINA, 1078 AH;;;Aggregator;BC",
      "offset": 18
    }
  ],
  "location": "PaymentModeA.select_the_hotel_and_rate_on_HotelSearchPage(String)"
});
formatter.result({
  "duration": 90871178919,
  "status": "passed"
});
formatter.match({
  "location": "PaymentModeA.user_should_redirect_to_SelectTravelerPage()"
});
formatter.result({
  "duration": 5125732774,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "Pay on departure",
      "offset": 29
    }
  ],
  "location": "PaymentModeA.user_select_the_PaymentMode_on_SelectTravelerPage(String)"
});
formatter.result({
  "duration": 5457276292,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "Pay on departure - Visa ending 0002",
      "offset": 24
    }
  ],
  "location": "PaymentModeA.select_the_PaymentType_on_SelectTravelerPage(String)"
});
formatter.result({
  "duration": 5996611779,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "No",
      "offset": 31
    }
  ],
  "location": "PaymentModeA.select_the_HotelCommunication_on_SelectTravelerPage(String)"
});
formatter.result({
  "duration": 2436910277,
  "status": "passed"
});
formatter.match({
  "location": "PaymentModeA.click_on_ConfirmBooking_Button_on_SelectTravelerPage()"
});
formatter.result({
  "duration": 4562710884,
  "status": "passed"
});
formatter.match({
  "location": "PaymentModeA.user_should_redirect_to_BookingConfirmationPage()"
});
formatter.result({
  "duration": 8681669350,
  "status": "passed"
});
formatter.match({
  "location": "PaymentModeA.booking_should_be_created_successfully()"
});
formatter.result({
  "duration": 10474998538,
  "status": "passed"
});
formatter.match({
  "location": "PaymentModeA.user_click_on_ViewBooking_button_on_BookingConfirmationPage()"
});
formatter.result({
  "duration": 7444762656,
  "status": "passed"
});
formatter.match({
  "location": "PaymentModeA.user_click_on_Modify_button_on_BookingConfirmationPage()"
});
formatter.result({
  "duration": 2446472552,
  "status": "passed"
});
formatter.match({
  "location": "PaymentModeA.user_should_redirect_to_ModifyBooking_Page()"
});
formatter.result({
  "duration": 15042365560,
  "status": "passed"
});
formatter.match({
  "location": "PaymentModeA.user_click_on_ModifyCheckInAndCheckOut_link_on_ModifyBooking_Page()"
});
formatter.result({
  "duration": 4473338558,
  "status": "passed"
});
formatter.match({
  "location": "PaymentModeA.user_change_the_Check_In_and_Check_Out_Date_on_ModifyBooking_Page()"
});
formatter.result({
  "duration": 16133821927,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "Aggregator;BC",
      "offset": 22
    }
  ],
  "location": "PaymentModeA.user_select_the_rate_on_ModifyBooking_Page(String)"
});
formatter.result({
  "duration": 24149090253,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "No",
      "offset": 31
    }
  ],
  "location": "PaymentModeA.select_the_HotelCommunication_on_ModifyBooking_Page(String)"
});
formatter.result({
  "duration": 6721118531,
  "status": "passed"
});
formatter.match({
  "location": "PaymentModeA.user_click_on_ModifyBooking_button()"
});
formatter.result({
  "duration": 4686160811,
  "status": "passed"
});
formatter.match({
  "location": "PaymentModeA.user_should_redirect_to_BookingConfirmationPage()"
});
formatter.result({
  "duration": 40712728184,
  "status": "passed"
});
formatter.match({
  "location": "PaymentModeA.booking_should_be_created_successfully()"
});
formatter.result({
  "duration": 7278777374,
  "status": "passed"
});
formatter.match({
  "location": "PaymentModeA.user_verify_the_error_message_on_BookingConfirmationPage()"
});
formatter.result({
  "duration": 84637264,
  "status": "passed"
});
formatter.match({
  "location": "PaymentModeA.user_click_on_ViewBooking_button_on_BookingConfirmationPage()"
});
formatter.result({
  "duration": 7408910739,
  "status": "passed"
});
formatter.match({
  "location": "PaymentModeA.user_click_on_Cancel_button_on_BookingConfirmationPage()"
});
formatter.result({
  "duration": 4741676098,
  "status": "passed"
});
formatter.match({
  "location": "PaymentModeA.user_should_redirect_to_CancelBooking_Page()"
});
formatter.result({
  "duration": 5058709396,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "No",
      "offset": 36
    }
  ],
  "location": "PaymentModeA.user_select_the_HotelCommunication_on_CancelBooking_Page(String)"
});
formatter.result({
  "duration": 2394731577,
  "status": "passed"
});
formatter.match({
  "location": "PaymentModeA.user_click_on_ContinueBooking_button_on_CancelBooking_Page()"
});
formatter.result({
  "duration": 21211496316,
  "status": "passed"
});
formatter.match({
  "location": "PaymentModeA.user_should_redirect_to_BookingConfirmationPage()"
});
formatter.result({
  "duration": 5054302832,
  "status": "passed"
});
formatter.match({
  "location": "PaymentModeA.booking_should_be_cancelled_successfully()"
});
formatter.result({
  "duration": 6500498507,
  "status": "passed"
});
formatter.after({
  "duration": 2135138053,
  "status": "passed"
});
formatter.after({
  "duration": 1580202,
  "status": "passed"
});
});