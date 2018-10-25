@regression
Feature: new onboarding with GDPR

  Background:
    When I accept privacy policy
    And I see onboarding information page
    And I close the geo localization page
    And I close zipCode screen
    And I see profiling page
    And I accept the profiling
    And I see the login page
    And I close the login page
   Then I set "Italia" as country

@gdpr
  Scenario: I accept the GDPR on boarding
    And I tap on location settings 
    Then I see the list of countries on dropDown list
    And I select "USA" as country
    And I close location settings
    And I see the login page
    And I close the login page
    When Stop to record
    When Localytics