Feature: Using the app with an account
  As a Columbia student
  I can use with the app with an existing account
  Or I can create a new account

Background:
  Given the following accounts exist:
    | user_id    | name          | email             | password   |
    | 0          | Kathy Lee     | kathy@gmail.com   | password   |
    | 1          | John Doe      | john@gmail.com    | password   |
  And I am on the login page

Scenario: I have an account and I successfully login
  When I login with "john@gmail.com" and "password"
  Then I should see "Welcome, John Doe"

Scenario: I have an account and I use the wrong password
  When I login with "john@gmail.com" and "asdf"
  Then I should see "Incorrect password."
  Then I should be on login page

Scenario: I do not have an account and I attempt to login
  When I login with "jane@gmail.com" and "password"
  Then I should see "No account found with that email."
  Then I should be on login page

Scenario: I create an account with valid credentials
  When I go to create an account
  And I sign up with the following: name as "Jane Doe", email as "jane@gmail.com", password as "password"
  Then I should see "Welcome, Jane Doe"

Scenario: I create an account with an existing email
  When I go to create an account
  And I sign up with the following: name as "John Doe", email as "john@gmail.com", password as "password"
  Then I should see "An account with this email already exists."
  Then I should be on signup page

Scenario: I logout and I am back to login page
  When I login with "john@gmail.com" and "password"
  Then I should see "Welcome, John Doe"
  When I click Logout
  Then I should be on login page