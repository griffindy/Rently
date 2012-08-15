Feature: Guests can visit an apartment listingo

  Scenario: visit an apartment listing as a guest
    Given an apartment exists
    And I am a guest
    When I visit an apartment listing
    Then It should not blow up
