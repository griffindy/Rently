Feature: A user can favorite an apartment

  Scenario: A guest user favorites an apartment
    Given an apartment exists
    And I am viewing an apartment page
    When I click on the favorite button
    Then I should be prompted to sign up

  Scenario: A tenant favorites an apartment
    Given an apartment exists
    And I am a tenant and am signed in
    And I am viewing an apartment page
    When I click on the favorite button
    Then I should see the apartment under my favorites