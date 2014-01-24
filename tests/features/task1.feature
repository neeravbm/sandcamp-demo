Feature: Demo-1 Next integer page access
When a user visits the next integer page
as admin user
I should be able to view the page and the next integer

  @javascript @insulated @1
  Scenario: Admin user should be able to view the page and the next integer
    Given I am on "/user/login"
    When I fill in "Username" with "admin"
    When I fill in "Password" with "1234"
    When I press button "Log in"
    Given I am on "/show-next-integer/3.4"
    Then I should see "The next integer is 4."
    Then I click "Log out"