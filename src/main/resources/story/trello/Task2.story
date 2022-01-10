Description: Story to check sign in and visual checks;

Scenario: Sign in
Given I am on the main application page
When I click on element located `By.xpath(//nav[contains(@class,'navbar')]/descendant::a[contains(@href,'login')])`
And I enter `${userEmail}` in field located `By.xpath(//input[@id='user'])`
And I click on element located `By.xpath(//input[@id='login'])`
And I wait until element located `By.xpath(//input[@id='password'])` appears
And I enter `${userPassword}` in field located `By.xpath(//input[@id='password'])`
And I click on element located `By.xpath(//button[@id='login-submit'])`
And I wait until element located `By.xpath(//span[contains(@title,'vividusTestUser')])` appears

Scenario: Main Page visual check
When I compare against baseline with `mainPage` ignoring:
|ELEMENT                                   |
|By.xpath(//span[@class='board-tile-fade'])|

Scenario: Board Page visual check
When I click on element located `By.xpath(//div[@title='kanban'])`
When I compare against baseline with `boardPage`

Scenario: Home Page visual check
Given I am on the main application page
When I click on element located `By.xpath(//a[@data-test-id='home-link'])`
When I compare against baseline with `homePage`

Scenario: Members Page visual check
When I click on element located `By.xpath(//a[contains(@href,'members')])`
When I compare against baseline with `membersPage`

Scenario: Profile Page visual check
Given I am on a page with the URL 'https://trello.com/vividustestuser'
When I compare against baseline with `profilePage`


