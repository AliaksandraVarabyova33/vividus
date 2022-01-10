Description: Story to try composite and nested steps;


Scenario: Sign in with composite step
Given I am on the main application page
When I click on element located `By.xpath(//nav[contains(@class,'navbar')]/descendant::a[contains(@href,'login')])`
When I login as a registered user
When I wait until element located `By.xpath(//span[contains(@title,'vividusTestUser')])` appears

Scenario: Make page public (if it's private) and perform visual check
When I click on element located `By.xpath(//a[@data-test-id='home-link'])`
When I click on element located `By.xpath(//a[contains(@href,'members')])`
And I wait until element located `By.xpath(//a[contains(@href,'account')])` appears
When I click on element located `By.xpath(//a[contains(@href,'account')])`
When I wait until element located `By.xpath(//img[@class='slack-button'])` appears
When I find = '1' elements by By.xpath(//span[contains(@class,'icon-private')]/ancestor::div[@class='setting-item']//a[not(@disabled)]) and for each element do
|step                                                                                                                                       |
|When I click on element located `By.xpath(//span[contains(@class,'icon-private')]/ancestor::div[@class='setting-item']//a[not(@disabled)])`|
|When I click on element located `By.xpath(//ul//span[contains(@class,'icon-public')])`                                                     |
|When I refresh the page                                                                                                                    |
When I compare against baseline with `publicAccessAccount` ignoring:
|ELEMENT                                   |
|By.xpath(//button[@data-test-id='profileImage'])|



