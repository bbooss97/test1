require "rails_helper"

  RSpec.describe ProfilopazientisController, type: :controller do
  
    fixtures :all
  
    it "Should give me two profilopazientis from fixtures se loggato paziente" do
      sign_in pazientes(:pazienteone)
      get :index
      expect(assigns(:profilopazientis).size).to eql(2)
    end
  
    it "Niente profilopazientis se non loggato" do
      get :index
      expect(assigns(:profilopazientis).nil?)
    end
  
    it "should not create profilopazientis" do
      params = {:profilopazienti=>{:nome => "nome", :cognome =>
      "cognome" }}
      get :create, :params => params
      m_tst= Profile.where(:nome => "nome")
      expect(m_tst).to be_empty
      end
  
      
    it "should create profilopazientis" do
      sign_in pazientes(:pazienteone)
      params = {:profilopazienti=>{:nome => "nome", :cognome =>
        "cognome" }}  
      sleep 1
      submission = Profilopazienti.create(nome: "nome", cognome: "cognome")
  
      expect(:submission=>(:nome)).not_to be_empty    
    end
    
    it "Should destroy two profiles from fixtures se loggato paziente" do
      sign_in pazientes(:pazienteone)
      get :index
      expect(assigns(:profilopazientis).size).to eql(2)
      Profilopazienti.destroy(1)
      expect(assigns(:profilopazientis).size).to eql(1)
    end
  
  
  end
  