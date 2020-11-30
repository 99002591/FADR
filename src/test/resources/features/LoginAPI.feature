Feature: Login using API
I want to login
As Admin

  Background: 
    Given Login end point should be available
  
  Scenario Outline: Login with incorrect credentials
     When Enter the <email>
      And Enter <password>
      And Make request to endpoint
     Then validate <response> response
  	 And  validate the <error code> erorr code
    Examples: 
      | email                      | password                      | response              | error code |
      | invalid email format       | valid password                | invalid email address | 9007       |
      | valid email                | incorrect password            | unauthorized access   | 9001       |
      | email attribute left blank | valid password                | field cannot be empty | 1001       |
      | valid email                | password attribute left blank | field cannot be empty | 1001       | 
      | email attribute left blank | password attribute left blank | field cannot be empty | 1001       | 
      | unregistered email         | valid password                | unauthorized access   | 9001       |
  
  
