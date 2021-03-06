  
package TestRunner;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import io.cucumber.junit.Cucumber;

@RunWith(Cucumber.class)

@CucumberOptions(	features = {"src/test/resources/features"},
					glue = { "stepDefinition" }, 
					plugin = {"html:target/Report-html" }, 
					monochrome = true)

public class TestRunner {

}
