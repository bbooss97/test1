require "rails_helper"

RSpec.describe PrescriptionsController, type: :controller do

  fixtures :all

  it "Should give me two prescription from fixtures se loggato medico" do
    sign_in users(:medicoone)
    get :index
    expect(assigns(:prescriptions).size).to eql(2)
  end

  it "Niente prescriptions se non loggato" do
    get :index
    expect(assigns(:prescriptions).nil?)
  end

  it "should not create prescriptions" do
    params = {:prescription => {:medicinale => "medicinale", :descrizioneUtilizzo =>
    "descrizioneUtilizzo" }}
    get :create, :params => params
    m_tst= Prescription.where(:medicinale => "medicinale")
    expect(m_tst).to be_empty
    end

    
  it "should create prescriptions" do
    sign_in users(:medicoone)
    params = {:prescription => {:medicinale => "medicinale", :descrizioneUtilizzo =>
      "descrizioneUtilizzo" }}
    sleep 1
    submission = Prescription.create(medicinale: "medicinale", descrizioneUtilizzo: "descrizioneUtilizzo")

    expect(:submission=>(:medicinale)).not_to be_empty    
  end

  it "Should destroy two prescription from fixtures se loggato medico" do
    sign_in users(:medicoone)
    get :index
    expect(assigns(:prescriptions).size).to eql(2)
    Prescription.destroy(1)
    expect(assigns(:prescriptions).size).to eql(1)

  end

end