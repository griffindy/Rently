Feature: Apartment Photos
  Every apartment should have a number of photos that can be
  viewed by everyone and edited by the landlord of the apartment

  Scenario: Add photos to apartment
    Given an apartment
    When I add photos to the apartment
    Then the apartment should have photos
