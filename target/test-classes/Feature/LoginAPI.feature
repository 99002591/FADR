Feature: Login using API
I want to login
As Admin

  Background: 
    Given Login end point should be available
  
  Scenario Outline: Login with incorrect credentials
     When api_Enter the <email>
      And api_Enter <password>
      And Make request to endpoint
     Then validate <response> response
  
    Examples: 
      | email                      | password                      | response              | 
      | invalid email format       | valid password                | invalid email address | 
      | valid email                | incorrect password            | unauthorized access   | 
      | email attribute left blank | valid password                | field cannot be empty | 
      | valid email                | password attribute left blank | field cannot be empty | 
      | email attribute left blank | password attribute left blank | field cannot be empty | 
      | unregistered email         | valid password                | unauthorized access   | 
  
  
