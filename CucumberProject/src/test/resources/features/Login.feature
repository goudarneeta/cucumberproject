
Feature: login
 
Backkground :

    Given  user go to "http://qa-tekarch.firebaseapp.com"    
    When  user enters "admin123@gmail.com" in username field
   // @smoke
    Scenario: valid login with correct username and password 
    And "admin123" in password field
    And  user click on login button
    Then page title should be "Selenium"
 
   // @Regression
  /*  Scenario: valid login with correct username and password 
    Given  user go to "http://qa-tekarch.firebaseapp.com"    
    When  user enters "admin123@gmail.com" in username field
    And "admin" in password field
    And user click on login button
    Then user should get an alert with text Error : The password is invalid "

  