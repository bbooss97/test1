class VisitesController < ApplicationController
  before_action :set_visite, only: %i[ show edit update destroy ]
  #load_and_authorize_resource :only => [:create, :update, :destroy, :read]
  load_and_authorize_resource
  # GET /visites or /visites.json
  def index
    if not (user_signed_in? or paziente_signed_in? or administrator_signed_in?)
      redirect_to root_path and return
    end
    @booleano=0
    @visites = Visite.all
  end

  # GET /visites/1 or /visites/1.json
  def show
    if not (user_signed_in?  or administrator_signed_in?)
      redirect_to root_path and return
    end
  end

  # GET /visites/new
  def new
    if not (user_signed_in?  or administrator_signed_in?)
      redirect_to root_path and return
    end
    @visite = Visite.new
  end

  # GET /visites/1/edit
  def edit
    if not (user_signed_in?  or administrator_signed_in?)
      redirect_to root_path and return
    end
  end

  # POST /visites or /visites.json
  def create
    if not (user_signed_in?  or administrator_signed_in?)
      redirect_to root_path and return
    end
    @visite = Visite.new(visite_params)

    respond_to do |format|
      if @visite.save
        format.html { redirect_to @visite, notice: "Visite was successfully created." }
        format.json { render :show, status: :created, location: @visite }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @visite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visites/1 or /visites/1.json
  def update
    if not (user_signed_in? or paziente_signed_in? or administrator_signed_in?)
      redirect_to root_path and return
    end
    respond_to do |format|
      if @visite.update(visite_params)
        format.html { redirect_to @visite, notice: "Visite was successfully updated." }
        format.json { render :show, status: :ok, location: @visite }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @visite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visites/1 or /visites/1.json
  def destroy
    if not (user_signed_in? or paziente_signed_in? or administrator_signed_in?)
      redirect_to root_path and return
    end
    @visite.destroy
    respond_to do |format|
      format.html { redirect_to visites_url, notice: "Visite was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visite
      @visite = Visite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def visite_params
      params.require(:visite).permit(:nome_paziente, :cognome_paziente, :telefono_paziente, :ora_visita, :luogoVisita, :tipo_visita, :user_id, :email)
    end
end
