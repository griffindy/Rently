Feature: Guests can visit an apartment listing

  Scenario: visit an apartment listing as a guest
    Given an apartment exists with address "97 Walden Street"
    And I am a guest
    When I am viewing the apartment with address "97 Walden Street"
    Then it should not have any errors
