Feature: Unregistered Admin can sign in

Scenario: Unregistered User can sign in as Admin
    Given I am on test1 home page
    When I fill in "Email" whit "admin@prova"
    When I fill in "Password" whit "123456"
    When I fill in "Password confirmation" whit "123456"
    And I press "Sign up"
    Then I should be on home page
    And I follow "Esciadmin"
    Then I should be on home page



Scenario: Unregistered User can login in as admin

    Given I am on test1 home page
    When I fill in "Email" whit "admin@prova"
    When I fill in "Password" whit "123456"
    When I fill in "Password confirmation" whit "123456"
    And I press "Sign up"
    Then I should be on home page
    And I follow "Esciadmin"
    Then I should be on home page
    Given I am on administrators sign in page
    When I fill in "Email" whit "admin@prova"
    When I fill in "Password" whit "123456"
    And I press "Log in"
    And I follow "Funzioni Amministratore"


Scenario: Admin can edit user medico
    Given I am on test1 home page
    When I fill in "Email" whit "admin@prova"
    When I fill in "Password" whit "123456"
    When I fill in "Password confirmation" whit "123456"
    And I press "Sign up"
    Then I should be on home page
    And I follow "Esciadmin"


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

    Given I am on administrators sign in page
    When I fill in "Email" whit "admin@prova"
    When I fill in "Password" whit "123456"
    And I press "Log in"
    And I follow "Funzioni Amministratore"
    And I click "Edit"
    Then I should be on the log in come Medico page
    When I fill in "Email" whit "provaMedico@prova"
    When I fill in "Password" whit "admin12345"
    And I press "Log in"
    And I click "Esci"

Scenario: Admin can destroy user medico
    Given I am on test1 home page
    When I fill in "Email" whit "admin@prova"
    When I fill in "Password" whit "123456"
    When I fill in "Password confirmation" whit "123456"
    And I press "Sign up"
    Then I should be on home page
    And I follow "Esciadmin"


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

    Given I am on administrators sign in page
    When I fill in "Email" whit "admin@prova"
    When I fill in "Password" whit "123456"
    And I press "Log in"
    And I follow "Funzioni Amministratore"
    And I click "Destroy"
    And I follow "Esciadmin"
    Then I should be on home page
    When I follow "Loggati come medico"
    Then I should be on the log in come Medico page
    When I fill in "Email" whit "provaMedico@prova"
    When I fill in "Password" whit "123456"
    And I press "Log in"
    Then I should be on the log in come Medico page


