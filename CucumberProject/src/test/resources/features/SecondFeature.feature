
Feature:login

  Scenario: valid username with correct username and password
    Given user go to "http://qa-tekarch.firebaseapp.com/"
    When user enters "admin123@gmail.com" in username field
    And "admin123" in password field
    And user click on login button
    Then page title should be "Selenium"

