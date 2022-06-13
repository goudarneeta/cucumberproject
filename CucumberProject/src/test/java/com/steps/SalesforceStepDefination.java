package com.steps;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.testng.Assert;
import io.github.bonigarcia.wdm.WebDriverManager;
import io.cucumber.java.After;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class SalesforceStepDefination {
	WebDriver driver;
	@Given("user go to {string}")
	public void user_go_to(String url) {
		WebDriverManager.firefoxdriver().setup();
		driver = new FirefoxDriver();
		 driver.get(url);
	}

	@When("user enters {string} in username field")
	public void user_enters_in_username_field(String userName) throws InterruptedException {
		Thread.sleep(5000);
		By locator= By.id("email.field");
		WebElement username=driver.findElement(locator);
		username.sendKeys(userName);
	}

	@When("{string} in password field")
	public void in_password_field(String password) {
	  // driver.findElement(By.id("password_field")).sendKeys(password);
	driver.findElement(By.id("password_field")).sendKeys(password);
	}

	@When("user click on login button")
	public void user_click_on_login_button() {
		driver.findElement(By.tagName("button")).click();
	}

	@Then("page title should be {string}")
	public void page_title_should_be(String expectedTitle) {
		String actual= driver.getTitle();
	  Assert.assertEquals(actual, expectedTitle);
	}
    @Then("user shouls get an alert with text{string}")
    public void user_should_get_an_alert_with_text(String expected) throws InterruptedException {
    	Thread.sleep(5000);
		String actual= driver.switchTo().alert().getText();
	  Assert.assertEquals(actual, expected);
    }
    @After
    public void tearDown() {
    	driver.quit();
    }
}
