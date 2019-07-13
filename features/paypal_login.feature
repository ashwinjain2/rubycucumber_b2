Feature: Login Paypal

  Scenario Outline: Login to paypal website wrong password
    Given I am on paypal website
    #When I enter <username> and <password>
    Then I validate the heading shows as "Send money to friends and family."
    Then I should validate the link for favorite shops is "https://www.paypal.com/us/webapps/mpp/about-paypal-products"
    And I should see the imgage of paypal sites accepting in new york
      #    Then I should see the error message page

    Examples:
      | username               | password |
      | rabbi7231121@yahoo.com | ttttttt  |
     # | user2                | pass2    |

  Scenario Outline: Login to paypal website wrong password
    Given I am on paypal website
    When I enter <username> and <password>
    And I click the Login button
    And I click the settings icon
    And I click the Add address plus icon
    And I select the New Jersey state from the dropdown list
  And I make the address primary by selecting the checkbox

    Examples:
      | username               | password |
      | xfnemailtest@gmail.com | PickCart7  |

  Scenario Outline: Login to paypal website wrong password
    Given I am on paypal website
    When I enter <username> and <password>
    And I click the Login button
    And I click the settings icon
    And I click the upgrade to business account link
    And I select the existing account radio button
    Examples:
      | username               | password |
      | xfnemailtest@gmail.com | PickCart7  |


