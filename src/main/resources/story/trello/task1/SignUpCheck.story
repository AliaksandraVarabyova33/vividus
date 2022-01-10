Description: Story to check that user cannot register via vividus because of captcha;

Scenario: Try to register
Given I am on the main application page
When I click on element located `By.xpath(//nav[contains(@class,'navbar')]/descendant::a[contains(@href,'signup')])`
And I enter `<email>` in field located `By.xpath(//input[@id='email'])`
And I click on element located `By.xpath(//input[@id='signup-submit'])`
And I wait until element located `By.xpath(//input[@id='displayName'])` appears
And I enter `<userName>` in field located `By.xpath(//input[@id='displayName'])`
And I click on element located `By.xpath(//button[@id='signup-submit'])`
Then the text '<email>' does not exist
Examples:
|email                                       |userName |
|#{generate(regexify'[a-z]{8}+\@gmail\.com')}|testUser1|
|#{generate(regexify'[a-z]{8}+\@gmail\.com')}|testUser2|



 
