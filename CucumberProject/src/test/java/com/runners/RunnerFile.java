package com.runners;
import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;

@CucumberOptions(features=
		                  //"src/test/resources/features/FirstFeature.feature",
		                  "src/test/resources/features/SalesforceFeature.feature",
                         // "src/test/resources/features/Login.feature",
                 glue= "com.steps")
                		// format = {"pretty"},
                		// monochrome = true,
                		// dryRun = true,
                		// tags = "@Smoke or @Regression"
                       
                		 
                		
public class RunnerFile extends AbstractTestNGCucumberTests {
       
}
