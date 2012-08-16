Feature: A landlord can list an apartment

  Scenario: listing an apartment
    Given I sign up as a landlord
    When I click the link to create a new listing
    And I fill out the new apartment form for "97 Walden Street"
    Then I should see the "97 Walden Street" apartment in my listings
