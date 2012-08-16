Feature: Apartment Photos
  Every apartment should have a number of photos that can be
  viewed by everyone and edited by the landlord of the apartment

  Scenario: Add photos to apartment
    Given I sign up as a landlord
    When I click the link to create a new listing
    And I fill out the form and upload a photo for "97 Walden Street"
    Then the apartment with address "97 Walden Street" should have a photo
