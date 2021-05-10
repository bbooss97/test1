Feature: As a Paziente I want to be able to ask an appointment

Scenario: As a Paziente I want to be able to ask an appointment
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
    When I follow "Registrati come paziente"
    Then I should be on the sign up come Paziente page
    When I fill in "Email" whit "provaPaziente@prova"
    When I fill in "Password" whit "123456"
    When I fill in "Password confirmation" whit "123456"
    And I press "Sign up"
    Then I should be on home page
    When I follow "PrenotaUnMedico"
    Then I should be on the prenotaunmedico page
    When I click "Chiedi un appuntamento"
    Then I should be on the chiediappuntamento page

Scenario: As a Medico I want to confirm an appointment
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
    When I follow "Registrati come paziente"
    Then I should be on the sign up come Paziente page
    When I fill in "Email" whit "prova@prova"
    When I fill in "Password" whit "123456"
    When I fill in "Password confirmation" whit "123456"
    And I press "Sign up"
    Then I should be on home page
    When I follow "PrenotaUnMedico"
    Then I should be on the prenotaunmedico page
    And I click "Chiedi un appuntamento"
    Then I should be on the chiediappuntamento page
    And I follow "Esci"
    Then I should be on home page
    When I follow "Loggati come medico"
    Then I should be on the log in come Medico page
    When I fill in "Email" whit "provaMedico@prova"
    When I fill in "Password" whit "123456"
    And I press "Log in"
    Then I should be on home page
    When I click "Richieste Di Appuntamento"
    Then I should be on the richiestediappuntamento page
    Then I click "Conferma il Suo appuntamento"
