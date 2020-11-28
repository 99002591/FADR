Feature: Login with UI
	I want to login
	As Admin

Scenario Outline: Login with incorrect credentails
	Given Open the browser and Navigate to the FADR Login page
	When Enter the <email>
	* Enter the <password>
	* Click login
	Then Login fails
	
	Examples:
	|email|password|
	|invalid email|valid password|
	|invalid email|invalid password|
	
	
Scenario Outline: Login with invalid format and blank credentials
	Given Open the browser and Navigate to the FADR Login page
	When Enter the <email>
	* Enter the <password>
	* Click Login_1
	Then Cannot login
	
	Examples:
	|email|password|
	|incorrect email format|valid password|
	|valid email|blank password|
	|blank email|valid password|
	|blank email|blank password|
	
Scenario Outline:: Remember Me button
	Given Open the browser and Navigate to the FADR Login page
	* Enter valid credentials
	When Remember Me button is <button>
	* Logout
	Then Verify if username field is <username field>
	
	Examples:
	|button|username field|
	|unchecked|not autofilled|
	|checked|autofilled|
	
Scenario Outline: Password masking and unmasking
	Given Open the browser and Navigate to the FADR Login page
	* Enter any credentials
	When Eye button is clicked <times>
	Then Password should be <visibility>
	
	Examples:
	|times|visibility|
	|once|unmasked|
	|twice|masked|
	
Scenario: Forgot password
	Given Open the browser and Navigate to the FADR Login page
	When Forgot password link is clicked
	Then Redirect to Forgot password page
	
Scenario: Contact EATON support
	Given Open the browser and Navigate to the FADR Login page
	When  Contact EATON support representative link is clicked
	Then Help section dialog box opens up