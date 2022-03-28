Feature: My Feature
Scenario:Chrome image
Given I open "chrome" web browser
and i navigate to "https://www.youtube.com" in web browser
Then i wait 5 seconds
And i see image "Image:Image:images/BYImage.png" within 10 seconds
Then i save screenshot
