Feature: optyTC
    Scenario: valid login with correct username and password
    Given  user go to "www.login.salesforce.com"    
    When  user enters "nita22@tekarch.com" in username field
    Scenario: valid login with correct username and password 
    And "salesforce22" in password field
    And click on login button
    Then page title should be "Salesforce"
 

    Scenario: valid login with correct username and password 
    Given  user go to "www.login.salesforce.com"    
    When  user enters "nita22@tekarch.com" in username field
    And "salesforce22" in password field
    And click on login button
    Then page title should be "Salesforce"
    And click on opportunity link
    And click on Opportunity Edit page
    When user enetrs  "neeta" in opportunity name 
    
    Scenario: valid login with correct username and password 
    Given  user go to "www.login.salesforce.com"    
    When  user enters "nita22@tekarch.com" in username field
    And "salesforce22" in password field
    And click on login button
    Then page title should be "Salesforce"
    And click on opportunity link
    And click on Opportunity pipeline link
 
    Scenario: valid login with correct username and password 
    Given  user go to "www.login.salesforce.com"    
    When  user enters "nita22@tekarch.com" in username field
    And "salesforce22" in password field
    And click on login button
    Then page title should be "Salesforce"
     And click on opportunity link
     And click on Stuck Opportunities link
 
    Scenario: valid login with correct username and password 
    Given  user go to "www.login.salesforce.com"    
    When  user enters "nita22@tekarch.com" in username field
    And "salesforce22" in password field
    And click on login button
    Then page title should be "Salesforce"
    And click on opportunity link
    And click on Quarterly Summary link
