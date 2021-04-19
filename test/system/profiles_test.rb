require "application_system_test_case"

class ProfilesTest < ApplicationSystemTestCase
  setup do
    @profile = profiles(:one)
  end

  test "visiting the index" do
    visit profiles_url
    assert_selector "h1", text: "Profiles"
  end

  test "creating a Profile" do
    visit profiles_url
    click_on "New Profile"

    fill_in "Citta", with: @profile.citta
    fill_in "Cognome", with: @profile.cognome
    fill_in "Costovisita", with: @profile.costovisita
    fill_in "Descrizione", with: @profile.descrizione
    fill_in "Email", with: @profile.email
    fill_in "Eta", with: @profile.eta
    fill_in "Nome", with: @profile.nome
    fill_in "Specializzazione", with: @profile.specializzazione
    click_on "Create Profile"

    assert_text "Profile was successfully created"
    click_on "Back"
  end

  test "updating a Profile" do
    visit profiles_url
    click_on "Edit", match: :first

    fill_in "Citta", with: @profile.citta
    fill_in "Cognome", with: @profile.cognome
    fill_in "Costovisita", with: @profile.costovisita
    fill_in "Descrizione", with: @profile.descrizione
    fill_in "Email", with: @profile.email
    fill_in "Eta", with: @profile.eta
    fill_in "Nome", with: @profile.nome
    fill_in "Specializzazione", with: @profile.specializzazione
    click_on "Update Profile"

    assert_text "Profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Profile" do
    visit profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Profile was successfully destroyed"
  end
end
