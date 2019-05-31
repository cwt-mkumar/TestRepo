package runner;
import org.junit.runner.RunWith;
import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import testBase.TestBase;


 
@RunWith(Cucumber.class)
@CucumberOptions(
 features = "src/main/java/features/PNRSpecs.Feature",
 glue= {"stepDefinition"},
 monochrome = true,
 tags = {"@TA-1127"}
 )

 
public class PNRSpecsTestRunner extends TestBase{
	
	
	
	  
	  
}