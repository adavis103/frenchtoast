Feature: Create an account

  Scenario: Create an account
  Given I am on the sign up page
  When I fill in the sign up form
  Then I should be on the home page
  Given I am on the logout page
  Given I am on the sign in page
  When I fill in the login form
  Then I should be on the home page
