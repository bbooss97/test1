require "application_system_test_case"

class VisitesTest < ApplicationSystemTestCase
  setup do
    @visite = visites(:one)
  end

  test "visiting the index" do
    visit visites_url
    assert_selector "h1", text: "Visites"
  end

  test "creating a Visite" do
    visit visites_url
    click_on "New Visite"

    fill_in "Cognome paziente", with: @visite.cognome_paziente
    fill_in "Giorno visita", with: @visite.giorno_visita
    fill_in "Nome paziente", with: @visite.nome_paziente
    fill_in "Ora visita", with: @visite.ora_visita
    fill_in "Telefono paziente", with: @visite.telefono_paziente
    fill_in "Tipo visita", with: @visite.tipo_visita
    click_on "Create Visite"

    assert_text "Visite was successfully created"
    click_on "Back"
  end

  test "updating a Visite" do
    visit visites_url
    click_on "Edit", match: :first

    fill_in "Cognome paziente", with: @visite.cognome_paziente
    fill_in "Giorno visita", with: @visite.giorno_visita
    fill_in "Nome paziente", with: @visite.nome_paziente
    fill_in "Ora visita", with: @visite.ora_visita
    fill_in "Telefono paziente", with: @visite.telefono_paziente
    fill_in "Tipo visita", with: @visite.tipo_visita
    click_on "Update Visite"

    assert_text "Visite was successfully updated"
    click_on "Back"
  end

  test "destroying a Visite" do
    visit visites_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Visite was successfully destroyed"
  end
end
