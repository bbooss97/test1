class ProfilopazientisController < ApplicationController
  before_action :set_profilopazienti, only: %i[ show edit update destroy ]

  # GET /profilopazientis or /profilopazientis.json
  def index
    @profilopazientis = Profilopazienti.all
  end

  # GET /profilopazientis/1 or /profilopazientis/1.json
  def show
  end

  # GET /profilopazientis/new
  def new
    @profilopazienti = Profilopazienti.new
  end

  # GET /profilopazientis/1/edit
  def edit
  end

  # POST /profilopazientis or /profilopazientis.json
  def create
    @profilopazienti = Profilopazienti.new(profilopazienti_params)

    respond_to do |format|
      if @profilopazienti.save
        format.html { redirect_to @profilopazienti, notice: "Profilopazienti was successfully created." }
        format.json { render :show, status: :created, location: @profilopazienti }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @profilopazienti.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profilopazientis/1 or /profilopazientis/1.json
  def update
    respond_to do |format|
      if @profilopazienti.update(profilopazienti_params)
        format.html { redirect_to @profilopazienti, notice: "Profilopazienti was successfully updated." }
        format.json { render :show, status: :ok, location: @profilopazienti }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @profilopazienti.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profilopazientis/1 or /profilopazientis/1.json
  def destroy
    @profilopazienti.destroy
    respond_to do |format|
      format.html { redirect_to profilopazientis_url, notice: "Profilopazienti was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profilopazienti
      @profilopazienti = Profilopazienti.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def profilopazienti_params
      params.require(:profilopazienti).permit(:nome, :cognome, :eta, :descrizione, :paziente_id)
    end
end
