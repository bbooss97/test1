class PrescriptionsController < ApplicationController
  before_action :set_prescription, only: %i[ show edit update destroy ]
  # load_and_authorize_resource :only => [:create, :update, :destroy, :read]
  load_and_authorize_resource
  # GET /prescriptions or /prescriptions.json
  def index
    if not ( user_signed_in? or paziente_signed_in? or administrator_signed_in?)
      redirect_to root_path and return
    end
    @prescriptions = Prescription.all
  end

  # GET /prescriptions/1 or /prescriptions/1.json
  def show
    if not ( user_signed_in? or paziente_signed_in? or administrator_signed_in?)
      redirect_to root_path and return
    end
  end

  # GET /prescriptions/new
  def new
    if not ( user_signed_in? or paziente_signed_in? or administrator_signed_in?)
      redirect_to root_path and return
    end
    @prescription = Prescription.new
  end

  # GET /prescriptions/1/edit
  def edit
    if not ( user_signed_in? or paziente_signed_in? or administrator_signed_in?)
      redirect_to root_path and return
    end
  end

  # POST /prescriptions or /prescriptions.json
  def create
    if not ( user_signed_in? or paziente_signed_in? or administrator_signed_in?)
      redirect_to root_path and return
    end
    @prescription = Prescription.new(prescription_params)

    respond_to do |format|
      if @prescription.save
        format.html { redirect_to @prescription, notice: "Prescription was successfully created." }
        format.json { render :show, status: :created, location: @prescription }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @prescription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prescriptions/1 or /prescriptions/1.json
  def update
    if not ( user_signed_in? or paziente_signed_in? or administrator_signed_in?)
      redirect_to root_path and return
    end
    respond_to do |format|
      if @prescription.update(prescription_params)
        format.html { redirect_to @prescription, notice: "Prescription was successfully updated." }
        format.json { render :show, status: :ok, location: @prescription }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @prescription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prescriptions/1 or /prescriptions/1.json
  def destroy
    if not ( user_signed_in? or paziente_signed_in? or administrator_signed_in?)
      redirect_to root_path and return
    end
    @prescription.destroy
    respond_to do |format|
      format.html { redirect_to prescriptions_url, notice: "Prescription was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prescription
      @prescription = Prescription.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def prescription_params
      params.require(:prescription).permit(:medicinale, :descrizioneUtilizzo, :paziente_id)
    end
end

