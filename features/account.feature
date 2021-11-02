@account
Feature: I want to visit account creation page
    Background:
        Given I am on create account page

    Scenario: Account from positive test case
        When I fill the first name input field with "James"
        And I fill the last name input field with "Bond"
        And I fill the email input field with
        And I fill the address 1 input field with "7 Bell Lane"
        And I fill the city input field with "London" 
        And I select "United Kingdom" in the country dropdown 
        And I select "Greater London" in the region dropdown 
        And I fill postcode input field with "E1 7LA"
        And I fill the login name input field with

        And I fill the password input field with "P@ssw0rd"
        And I fill the confirm input field with "P@ssw0rd"

        And I check not ot subscribe
        And I check privacy checkbox
        Then I click continue
        Then I should see successe page 

    