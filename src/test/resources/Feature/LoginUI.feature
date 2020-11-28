Feature: Login with UI
I want to login
As Admin

  Background: 
    Given Open the browser
      And navigate to the FADR Login page
  
  Scenario Outline: Login with incorrect credentails
  
     When Enter the <email>
      And Enter the <password>
      And Login
     Then Login fails
  
    Examples: 
      | email         | password         | 
      | invalid email | valid password   | 
      | invalid email | invalid password | 
  
  Scenario Outline: Login with invalid format and blank credentials
  
     When Enter the <email>
      And Enter the <password>
      And Click login
     Then Cannot login
  
    Examples: 
      | email                  | password       | 
      | incorrect email format | valid password | 
      | valid email            | blank password | 
      | blank email            | valid password | 
      | blank email            | blank password | 
  
  Scenario Outline: Remember Me button
  
    Given Enter valid credentials
     When Remember Me button is <button>
      And Logout
     Then Verify if username field is <username field>
  
    Examples: 
      | button    | username field | 
      | unchecked | not autofilled | 
      | checked   | autofilled     | 
  
  Scenario Outline: Password masking and unmasking
  
    Given Enter any credentials
     When Eye button is clicked <times>
     Then Password should be <visibility>
  
    Examples: 
      | times | visibility | 
      | once  | unmasked   | 
      | twice | masked     | 
  
  Scenario: Forgot password
  
     When Forgot password link is clicked
     Then Redirect to Forgot password page
  
  Scenario: Contact EATON support
  
     When  Contact EATON support representative link is clicked
     Then Help section dialog box opens up
