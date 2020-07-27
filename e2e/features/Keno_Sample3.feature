Feature: As an automation framework I can verify Venues

@desktop
    @smoke
    Scenario: 1. Verify select state and select VIC
      Given I navigate to the "keno" page
      And the "select-state-button" element should be present
      And I click the "VIC" with the text "VIC"
      And I wait "5" seconds

@desktop
    @smoke
    Scenario:2.  Verify Find Venue on Home Page
      Given I navigate to the "keno" page
      When the "select-state-button" element should be present
        Then I click the "VIC" with the text "VIC"
      And I wait "5" seconds
      And the "find-your-local-home" element should be present

@desktop
    @smoke
    Scenario: 3. Perform serach operation and check for All results link
      Given I navigate to the "keno" page
      When the "select-state-button" element should be present
        Then I click the "VIC" with the text "VIC"
      And I wait "5" seconds
      And I fill in the "venue-search-input" input with "Melbourne"
      And I click the "1st" "search" button
      And I wait "5" seconds
      When I am directed to the "melbourne" page         
      Then the "filter-all" element should be present

@desktop
    @smoke
    Scenario:4. Verify Venue results filed
       Given I navigate to the "keno" page
      When the "select-state-button" element should be present
        Then I click the "VIC" with the text "VIC"
      And I wait "5" seconds
      And I fill in the "venue-search-input" input with "Melbourne"
      And I click the "1st" "search" button
      And I wait "5" seconds
      When I am directed to the "melbourne" page         
      Then the "venue-results" element should be present

@desktop
    @smoke
    Scenario: 5. verify for results as BLack OPal
       Given I navigate to the "keno" page
      When the "select-state-button" element should be present
        Then I click the "VIC" with the text "VIC"
      And I wait "5" seconds
      And I fill in the "venue-search-input" input with "Melbourne"
      And I click the "1st" "search" button
      And I wait "10" seconds
      When I am directed to the "melbourne" page         
      Then the "BLACK OPAL" element should be present

@desktop
    @smoke
    Scenario: 6. verify for promotional link
       Given I navigate to the "keno" page
      When the "select-state-button" element should be present
        Then I click the "VIC" with the text "VIC"
      And I wait "5" seconds
      And I fill in the "venue-search-input" input with "Melbourne"
      And I click the "1st" "search" button
      And I wait "10" seconds
      When I am directed to the "melbourne" page         
      Then the "promotions-navbar" element should be present


       