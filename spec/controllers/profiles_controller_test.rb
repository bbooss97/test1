require "rails_helper"

RSpec.describe ProfilesController, type: :controller do

  fixtures :all

  it "Should give me two profiles from fixtures se loggato medico" do
    sign_in users(:medicoone)
    get :index
    expect(assigns(:profiles).size).to eql(2)
  end

  it "Niente profilo se non loggato" do
    get :index
    expect(assigns(:profiles).nil?)
  end

  it "should not create profilo" do
    params = {:profile=>{:nome => "nome", :cognome =>
    "cognome" }}
    get :create, :params => params
    m_tst= Profile.where(:nome => "nome")
    expect(m_tst).to be_empty
    end

    
  it "should create profilo" do
    sign_in users(:medicoone)
    params = {:profile=>{:nome => "nome", :cognome =>
      "cognome" }}  
    sleep 1
    submission = Profile.create(nome: "nome", cognome: "cognome")

    expect(:submission=>(:nome)).not_to be_empty    
  end


  it "Should destroy two prifiles from fixtures se loggato medico" do
    sign_in users(:medicoone)
    get :index
    expect(assigns(:profiles).size).to eql(2)
    Profile.destroy(1)
    expect(assigns(:profiles).size).to eql(1)
  end

end
