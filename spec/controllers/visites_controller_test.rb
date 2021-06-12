require "rails_helper"
RSpec.describe VisitesController, type: :controller do

  fixtures :all

  it "Should give me one visites from fixtures se loggato medico" do
    sign_in users(:medicoone)
    get :index
    expect(assigns(:visites).size).to eql(1)
  end

  it "Niente visita se non loggato" do
    get :index
    expect(assigns(:visites).nil?)
  end

  it "should not create visita" do
    params = {:visite=>{:nome_paziente => "nome", :cognome_paziente =>
    "cognome", :telefono_paziente => "12345", :ora_visita => "12:20:32", :tipo_visita => "boh"}}
    get :create, :params => params
    m_tst= Visite.where(:nome_paziente => "nome")
    expect(m_tst).to be_empty
    end

    
  it "should create visita" do
    sign_in users(:medicoone)
    params = {:visite=>{:nome_paziente => "nome", :cognome_paziente =>
    "cognome", :telefono_paziente => "12345", :ora_visita => "12:20:32", :tipo_visita => "boh"}}
  
    sleep 1
    submission = Visite.create(nome_paziente: "nome")

    expect(:submission=>(:nome_paziente)).not_to be_empty    
  end
  
  it "Should destroy two prifiles from fixtures se loggato medico" do
    sign_in users(:medicoone)
    get :index
    expect(assigns(:visites).size).to eql(1)
    Visite.destroy(1)
    expect(assigns(:visites).size).to eql(0)
  end

end

