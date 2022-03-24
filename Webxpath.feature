Feature: My Feature
Scenario:Chrome
Background:i
Given I assign "https://www.tryonsolutions.com" to variable "destinationWebsite"

Given I open "Chrome" web browser
Then i navigate to "https://outlook.office.com/" in web browser within 5 seconds 
And I close web browser
@directions
Scenario:
Given I open "chrome" web browser
Then i navigate to "https://www.tryonsolutions.com/" in web browser
And i wait 5 seconds
And i see title "Top Six Most Common WMS Mistakes and How to Avoid Them" in web browser
And  i wait 5 seconds

@exercise
Scenario: Browser Verification
Given I assign "Chrome" to variable "browser"
When I open $browser web browser
And I navigate to $destinationWebsite in web browser
And I wait 2 seconds
And I close web browser
Then I "am succesful!"