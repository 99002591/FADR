Feature: Login with UI
I want to login
As Admin

  Background: 
    Given Open the browser
      And navigate to the FADR Login page
  
  Scenario Outline: Login with incorrect credentails
  
     When Enter the <email>
      And Enter <password>
      And Login
     Then login unsuccesful
     And  validate error message
  
    Examples: 
      | email         | password         | 
      | invalid email | valid password   | 
      | invalid email | invalid password | 
  
  Scenario Outline: Login with invalid format and blank credentials
  
     When Enter the "<email_inv>"
      And Enter "<password_inv>"
      And Login
     Then login unsuccesful
  	 And  validate invalid format message
  	 
    Examples: 
      | email_inv              | password_inv   | 
      | incorrect email format | valid password | 
      | valid email            || 
      || valid password | 
      ||                | 
  
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
  
  
