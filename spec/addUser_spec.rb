require "rails_helper"

RSpec.feature "User prova a sloggarsi", :type => :feature do
    fixtures :all

    it "User si registra e poi prova a sloggarsi" do

        visit "home/index"
        expect(page).to have_text("Registrati come medico")
        
    end
end

require 'rails_helper'
RSpec.describe "admin delete user", :type => :feature do
  it "User 'admin' login on to application's settings page and delete user 'John Doe'" do
    admin = FactoryBot.create(:user, :username => "vgdb_admin", :password => "labassi2020", :email => "admin@mail", :id => 0)
    user = FactoryBot.create(:user)
    page.set_rack_session(user_id: admin.id)
    visit "/settings"
    expect(page).to have_content("Admin control panel")
    expect(page).to have_content("#{user.username}")
    click_link "Delete user"
    expect(page).to have_content("Delete user")
    fill_in "user[name]", with: user.username
    click_button "delete"
    expect(page).to have_content("Operation completed")
    click_link "×"
    expect(page).not_to have_content("#{user.username}")
  end
end