Feature: A user can favorite an apartment

  Scenario: A guest user favorites an apartment
    Given an apartment exists with address "97 Walden Street"
    And I am viewing an apartment with address "97 Walden Street" as a guest
    When I favorite the apartment
    Then I should be prompted to sign up

  Scenario: A tenant favorites an apartment
    Given an apartment exists with address "97 Walden Street"
    And I am signed in as a tenant
    And I am viewing the apartment with address "97 Walden Street"
    When I favorite the apartment
    Then I should see the apartment with address "97 Walden Street" under my favorites
