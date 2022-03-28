Feature: Exploring the Amazon

Background:
Given I import scenarios from "ExploringTheAmazon/Utilities/04_ExploringTheAmazon_Utilities.feature"
And I assign "chrome" to variable "browser"
And I assign "https://www.amazon.com" to variable "dstWebPage"

@directions
Scenario: Directions
Given I "am on the main Amazon homepage"
When I "extend the scenario 'Navigate to Prime Video' found in '04_ExploringTheAmazon_Utilities.feature' to perform the following steps"
    When I "click on the All menu"
    And I "click on the Prime Video submenu"
    And I "click on the Prime Video sub-submenu"
	Then I "am on the Prime Video menu"
	And I "confirm I am on the Prime Video menu"
Then I "call the 'Navigate to Prime Video' scenario from the main scenario"
And I "take a screenshot of the resulting page"
And I "can look in my output folder to see the results after the test in completed"
And I "add a 5 second wait step at the end of my test"
And I "close the browser as I am done"

Scenario: Exploring the Amazon
Given I "open the browser and navigate to the Amazon digital store"
	When I execute scenario "Open Browser to Specified Page"
Once I see element "xPath://div[@id='nav-logo']" in web browser

When I "search for an item"
Given I assign "compass" to variable "searchPhrase"
When I execute scenario "Search for Item"
And I wait 2 seconds
Then I save web browser screenshot

And I "return to Amazon's home page"
When I execute scenario "Return to Amazon Homepage"

And I "navigate to the Best Sellers page"
Given I execute scenario "Navigate to Best Seller"

And I "return to Amazon's home page"
When I execute scenario "Return to Amazon Homepage"
	
And I "navigate to the Prime Video selection"