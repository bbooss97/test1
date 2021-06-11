  Given('I am on test1 home page') do
    visit 'home/index' #GET home/index
    # Write code here that turns the phrase above into concrete actions
  end

  Given('I am on administrators sign in page') do
    visit '/administrators/sign_in' #GET 
    # Write code here that turns the phrase above into concrete actions
  end

  When('I follow {string}') do |string|
    click_link(string)
    #pending # Write code here that turns the phrase above into concrete actions
  end
  When('I fill in {string} whit {string}') do |field, value|
    fill_in(field, :with => value)
    #pending # Write code here that turns the phrase above into concrete actions
  end

  And('I press {string}') do |string|
    click_button(string)
    #pending # Write code here that turns the phrase above into concrete actions
  end
And('I click {string}') do |string|
    click_on(string)
    #pending # Write code here that turns the phrase above into concrete actions
  end

Then('I should be on the sign up come Medico page') do
    current_path = URI.parse(current_url).path
    current_path =='users/sign_up'
    #pending # Write code here that turns the phrase above into concrete actions
  end
Then('I should be on the sign up come Paziente page') do
    current_path = URI.parse(current_url).path
    current_path =='paziente/sign_up'
    #pending # Write code here that turns the phrase above into concrete actions
  end
Then('I should be on the prenotaunmedico page') do
    current_path = URI.parse(current_url).path
    current_path =='/prenotaunmedico'
    #pending # Write code here that turns the phrase above into concrete actions
  end
Then('I should be on the chiediappuntamento page') do
    current_path = URI.parse(current_url).path
    current_path =='chiediappuntamento/{int}'
    #pending # Write code here that turns the phrase above into concrete actions
  end
Then('I should be on the richiestediappuntamento page') do
    current_path = URI.parse(current_url).path
    current_path =='richiestediappuntamento'
    #pending # Write code here that turns the phrase above into concrete actions
  end
Then('I should be on home page') do
    current_path = URI.parse(current_url).path
    current_path =='home/index'
    #pending # Write code here that turns the phrase above into concrete actions
  end

Then('I should be on the user edit page') do
    current_path = URI.parse(current_url).path
    current_path =='user/edit'
    #pending # Write code here that turns the phrase above into concrete actions
  end
Then('I should be on the users page') do
    current_path = URI.parse(current_url).path
    current_path =='users/'
    #pending # Write code here that turns the phrase above into concrete actions
  end

Then('I should be on the log in come Medico page') do
    current_path = URI.parse(current_url).path
    current_path =='users/sign_in'
    #pending # Write code here that turns the phrase above into concrete actions
end
Then('I should be on the log in come Paziente page') do
    current_path = URI.parse(current_url).path
    current_path =='pazientes/sign_in'
    #pending # Write code here that turns the phrase above into concrete actions
  end
Then('I should be on the listaPazienti page') do
    current_path = URI.parse(current_url).path
    current_path =='listaPazienti'
    #pending # Write code here that turns the phrase above into concrete actions
  end
Then('I should be on the prescrizioniPaziente page') do
    current_path = URI.parse(current_url).path
    current_path =='prescrizioniPaziente/1'
    #pending # Write code here that turns the phrase above into concrete actions
  end
Then('I should be on the createprescription page') do
    current_path = URI.parse(current_url).path
    current_path =='createprescription/1'
    #pending # Write code here that turns the phrase above into concrete actions
  end
Then('I should be on the prescriptionedit page') do
    current_path = URI.parse(current_url).path
    current_path =='prescription/1/edit'
    #pending # Write code here that turns the phrase above into concrete actions
  end