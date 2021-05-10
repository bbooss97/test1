Feature: Unregistered User can sign up

Scenario: Unregistered User can sign up as Medico
    Given I am on test1 home page
    When I follow "Registrati come medico"
    Then I should be on the sign up come Medico page
    When I fill in "Email" whit "provaMedico@prova"
    When I fill in "Password" whit "123456"
    When I fill in "Password confirmation" whit "123456"
    And I press "Sign up"
    Then I should be on home page
    And I follow "Esci"
    Then I should be on home page

Scenario: Add a Medico Failure
    Given I am on test1 home page
    When I follow "Registrati come medico"
    Then I should be on the sign up come Medico page
    When I fill in "Email" whit "provaMedico@prova"
    When I fill in "Password" whit "123456"
    When I fill in "Password confirmation" whit "11111"
    And I press "Sign up"
    Then I should be on the users page

Scenario: Unregistered User can sign up as Paziente
    Given I am on test1 home page
    When I follow "Registrati come paziente"
    Then I should be on the sign up come Paziente page
    When I fill in "Email" whit "provaPaziente@prova"
    When I fill in "Password" whit "123456"
    When I fill in "Password confirmation" whit "123456"
    And I press "Sign up"
    Then I should be on home page
    And I follow "Esci"
    Then I should be on home page

Scenario: Add a Medico Failure
    Given I am on test1 home page
    When I follow "Registrati come paziente"
    Then I should be on the sign up come Medico page
    When I fill in "Email" whit "provaPaziente@prova"
    When I fill in "Password" whit "123456"
    When I fill in "Password confirmation" whit "11111"
    And I press "Sign up"
    Then I should be on the users page