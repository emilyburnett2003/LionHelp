Feature: Manage Reviews
    As a user,
    I want to create, view, and delete reviews
    So that I can see which vendors are reliable

Background: reviews in database

  Given the following reviews exist:
  | vendor_id | vendor_name          | title      | rating | comment                                                  |
  | 3          | Hannah Lasso         | Furniture  | 4      | Personally delivered to me.                             |
  | 3          | Hannah Lasso         | Furniture  | 3      | My chair had a scratch on the back.                     |
  | 3          | Hannah Lasso         | Furniture  | 5      | Was really friendly.                                    |
  | 3          | Hannah Lasso         | Furniture  | 5      | Sold at a really good price                             |
  | 4          | Barbara Reddington   | Manicure   | 1      | The nail design was not like the picture I showed.      |
  | 4          | Barbara Reddington   | Manicure   | 2      | They were late to the appointment.                      |
  | 4          | Barbara Reddington   | Manicure   | 1      | They were so rude to me.                                |

Scenario: Show all reviews
    Given I am on the review home page
    Then I should see "Hannah Lasso" 4 times
    Then I should see "Barbara Reddington" 3 times

Scenario: Show reviews for Barbara Reddington
    Given I am on the show_vendor_review page for 4
    Then I should see comments like: They were so rude to me., They were late to the appointment., The nail design was not like the picture I showed.

Scenario: Delete a review
  Given the following review exists:
    | vendor_name  | title     | comment                    | rating |
    | Hannah Lasso | Furniture | Personally delivered to me. | 4      |
  When I delete the review "Hannah Lasso", "Furniture", "Personally delivered to me.", "4"
  Then I should see "Review deleted."

Scenario: Create a new review
  Given I am on the review page
  When I fill in "Vendor" with "Hannah Lasso"
  And I fill in "what service did they provide" with "Furniture"
  And I fill in "Review" with "Personally delivered to me."
  And I fill in "Rating out of 10" with "4"
  And I press "Create Review"
  Then I should see "review posted successfully!"
