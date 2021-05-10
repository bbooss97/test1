Feature: As a User I want to edit my profile

Scenario: As a Medico I want to edit my profile
    Given I am on test1 home page
    When I follow "Registrati come medico"
    Then I should be on the sign up come Medico page
    When I fill in "Email" whit "provaMedico@prova"
    When I fill in "Password" whit "123456"
    When I fill in "Password confirmation" whit "123456"
    And I press "Sign up"
    Then I should be on home page
    And I follow "Edita profilo"
    Then I should be on the user edit page
    When I fill in "Password" whit "654321"
    When I fill in "Password confirmation" whit "654321"
    When I fill in "Current password" whit "123456"
    And I press "Update"
    Then I should be on home page

Scenario: As a Paziente I want to edit my profile
    Given I am on test1 home page
    When I follow "Registrati come paziente"
    Then I should be on the sign up come Paziente page
    When I fill in "Email" whit "provaPaziente@prova"
    When I fill in "Password" whit "123456"
    When I fill in "Password confirmation" whit "123456"
    And I press "Sign up"
    Then I should be on home page
    And I follow "Edita profilo"
    Then I should be on the user edit page
    When I fill in "Password" whit "654321"
    When I fill in "Password confirmation" whit "654321"
    When I fill in "Current password" whit "123456"
    And I press "Update"
    Then I should be on home page