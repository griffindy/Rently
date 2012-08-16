Feature: Guests can visit an apartment listing

  Scenario: visit an apartment listing as a guest
    Given an apartment exists with address "97 Walden St"
    And I am a guest
    When I am viewing an apartment page
    Then it should not have any errors
