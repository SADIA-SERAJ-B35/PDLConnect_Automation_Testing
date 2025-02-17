package com.pdl.pages;

import static org.junit.Assert.assertEquals;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.Select;

import com.pdl.utilities.BrowserUtil;
import com.pdl.utilities.CommonMethods;
import com.pdl.utilities.ConfigurationReader;
import com.pdl.utilities.Driver;
import com.pdl.utilities.SftAssert;

public class HomePage extends CommonMethods{

	WebDriver driver = Driver.getDriver();
	
	

	public HomePage() {
		PageFactory.initElements(Driver.getDriver(), this);
		
		System.out.println("Sadia is the New Manager");
	}
	
	
	@FindBy(xpath = "//a[contains(@class,'nav-link')]")
	public WebElement home;

	@FindBy(id = "mainForm:businessLine")
	public WebElement businessLine;

	@FindBy(id = "mainForm:module")
	public WebElement moduleList;

	@FindBy(id = "mainForm:showGlobalClient")
	public WebElement goTab;

	@FindBy(xpath = "//*[@id=\"navAdmin\"]/li[1]/a")
	public WebElement clientTab;
	
	

	public Select dropDownOption(WebElement dropdown, String optionName) {

		Select select = new Select(dropdown);

		select.selectByVisibleText(optionName);
		;
		return select;
	}

	public void verifyLandingOnHomepage() {
		
		// *
		String expectedTitle=ConfigurationReader.getProperty("HomePageTitle");
		String ExpectedURL = ConfigurationReader.getProperty("expectedURL");

		logger.info("Expected Title from properties file is =" + ExpectedURL);
        
		try {
			
		waitForUrlContains(ExpectedURL);
		
		} catch (Exception e) {
			logger.info("current URL is :" + driver.getCurrentUrl());
			logger.info("URL doesn't Containt: " + ExpectedURL);
		}
		
		// actual title & url
		
		String actualTitle = Driver.getDriver().getTitle();

		String currentURL = driver.getCurrentUrl();
		


		if (!currentURL.contains(ExpectedURL)) {
			
			driver.navigate().refresh();

			logger.info("browser refreshed again");

			waitForUrlContains(ExpectedURL);
			currentURL = driver.getCurrentUrl();
			actualTitle=driver.getTitle();
		}
		
		waitForElement(home);
		
		logger.info(" Current Page Title: " + actualTitle);
		
		softAssert.softAssertTrue(currentURL.contains(ExpectedURL), "User Landed on Homepage Successfully", "User Failed to land on Homepage");
		
//		softAssert.(currentURL.contains(ExpectedURL),"User Landed in Homepage -");
//		softAssert.assertEquals(currentURL, ExpectedURL, "User is landed in homepage");
		
		waitFor(10);
	    
	}

}
