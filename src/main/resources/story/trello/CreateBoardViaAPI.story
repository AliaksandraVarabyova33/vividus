Description: Story to create a board via API;

Scenario: Create new board via API
When I issue a HTTP POST request for a resource with the URL '${endpoint}?name=${boardName}&key=${key}&token=${token}'
Then `${responseCode}` is equal to `200`