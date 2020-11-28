package stepDefinition;

import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class loginAPI {
	 @Given("^Login end point should be available$")
	    public void login_end_point_should_be_available() throws Throwable {
	        throw new PendingException();
	    }

	    @When("^api_Enter the (.+)$")
	    public void apienter_the(String email) throws Throwable {
	        throw new PendingException();
	    }

	    @Then("^validate (.+) response$")
	    public void validate_response(String response) throws Throwable {
	        throw new PendingException();
	    }

	    @And("^api_Enter (.+)$")
	    public void apienter(String password) throws Throwable {
	        throw new PendingException();
	    }

	    @And("^Make request to endpoint$")
	    public void make_request_to_endpoint() throws Throwable {
	        throw new PendingException();
	    }

}
