require "application_system_test_case"

class ProfilopazientisTest < ApplicationSystemTestCase
  setup do
    @profilopazienti = profilopazientis(:one)
  end

  test "visiting the index" do
    visit profilopazientis_url
    assert_selector "h1", text: "Profilopazientis"
  end

  test "creating a Profilopazienti" do
    visit profilopazientis_url
    click_on "New Profilopazienti"

    fill_in "Cognome", with: @profilopazienti.cognome
    fill_in "Descrizione", with: @profilopazienti.descrizione
    fill_in "Eta", with: @profilopazienti.eta
    fill_in "Nome", with: @profilopazienti.nome
    fill_in "Paziente", with: @profilopazienti.paziente_id
    click_on "Create Profilopazienti"

    assert_text "Profilopazienti was successfully created"
    click_on "Back"
  end

  test "updating a Profilopazienti" do
    visit profilopazientis_url
    click_on "Edit", match: :first

    fill_in "Cognome", with: @profilopazienti.cognome
    fill_in "Descrizione", with: @profilopazienti.descrizione
    fill_in "Eta", with: @profilopazienti.eta
    fill_in "Nome", with: @profilopazienti.nome
    fill_in "Paziente", with: @profilopazienti.paziente_id
    click_on "Update Profilopazienti"

    assert_text "Profilopazienti was successfully updated"
    click_on "Back"
  end

  test "destroying a Profilopazienti" do
    visit profilopazientis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Profilopazienti was successfully destroyed"
  end
end
