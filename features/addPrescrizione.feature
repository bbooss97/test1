Feature: As a Medico I want to add/edit a Prescrizione

Scenario: As a Medico I wanto to add a Prescrizione
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
    And I follow "Esci"
    Then I should be on home page
    When I follow "Loggati come medico"
    Then I should be on the log in come Medico page
    When I fill in "Email" whit "provaMedico@prova"
    When I fill in "Password" whit "123456"
    And I press "Log in"
    Then I should be on home page
    When I follow "listaPazienti"
    Then I should be on the listaPazienti page
    And I click "Lista prescizioni cliente"
    Then I should be on the prescrizioniPaziente page
    And I click "New Prescription"
    Then I should be on the createprescription page
    When I fill in "Medicinale" whit "A"
    When I fill in "Descrizioneutilizzo" whit "A"
    And I click "Create Prescription"


Scenario: As a Medico I wanto to edit a Prescrizione
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
    And I follow "Esci"
    Then I should be on home page
    When I follow "Loggati come medico"
    Then I should be on the log in come Medico page
    When I fill in "Email" whit "provaMedico@prova"
    When I fill in "Password" whit "123456"
    And I press "Log in"
    Then I should be on home page
    When I follow "listaPazienti"
    Then I should be on the listaPazienti page
    And I click "Lista prescizioni cliente"
    Then I should be on the prescrizioniPaziente page
    And I click "New Prescription"
    Then I should be on the createprescription page
    When I fill in "Medicinale" whit "A"
    When I fill in "Descrizioneutilizzo" whit "A"
    And I click "Create Prescription"
    When I follow "listaPazienti"
    Then I should be on the listaPazienti page
    And I click "Lista prescizioni cliente"
    Then I should be on the prescrizioniPaziente page
    And I click "Edit"
    Then I should be on the prescriptionedit page
    When I fill in "Medicinale" whit "B"
    When I fill in "Descrizioneutilizzo" whit "B"
    And I click "Update Prescription"




