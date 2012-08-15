Feature: A landlord can list an apartment

  Scenario: listing an apartment
    Given a landlord exists
    When I click Create a new Listing
    And I fill out the form
    And I click submit
    Then I see the apartment under my listings
