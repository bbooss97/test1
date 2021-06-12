class ProfilesController < ApplicationController
  before_action :set_profile, only: %i[ show edit update destroy ]
  #load_and_authorize_resource :only => [:create, :update, :destroy, :read]
  load_and_authorize_resource
  # GET /profiles or /profiles.json
  def index
    if not ( user_signed_in? or administrator_signed_in?)
      redirect_to root_path and return
    end
    @profiles = Profile.all
  end

  # GET /profiles/1 or /profiles/1.json
  def show
    if not ( user_signed_in? or administrator_signed_in?)
      redirect_to root_path and return
    end
  end

  # GET /profiles/new
  def new
    if not ( user_signed_in? or administrator_signed_in?)
      redirect_to root_path and return
    end
    @profile = Profile.new
  end

  # GET /profiles/1/edit
  def edit
    if not ( user_signed_in? or administrator_signed_in?)
      redirect_to root_path and return
    end
  end

  # POST /profiles or /profiles.json
  def create
    if not ( user_signed_in? or administrator_signed_in?)
      redirect_to root_path and return
    end
    @profile = Profile.new(profile_params)

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: "Profile was successfully created." }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profiles/1 or /profiles/1.json
  def update
    if not ( user_signed_in? or administrator_signed_in?)
      redirect_to root_path and return
    end
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: "Profile was successfully updated." }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1 or /profiles/1.json
  def destroy
    if not ( user_signed_in? or administrator_signed_in?)
      redirect_to root_path and return
    end
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to profiles_url, notice: "Profile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def profile_params
      params.require(:profile).permit(:nome, :cognome, :eta, :email, :descrizione, :citta, :specializzazione, :costovisita)
    end
end
