Feature: User Can Sign Up

  Scenario: Landlord signs up
    Given I am on the home page
    When I sign up as a landlord
    Then I should see the landlord dashboard

  Scenario: Tenant signs up
    Given I am on the home page
    When I sign up as a tenant
    Then I should see the tenant dashboard

  Scenario: User does not see sign up link after signing up
    Given I am on the home page
    When I sign up as a landlord
    Then I should not see the sign up link
