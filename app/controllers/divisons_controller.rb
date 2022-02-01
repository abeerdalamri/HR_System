class DivisonsController < ApplicationController
  before_action :set_divison, only: %i[ show edit update destroy ]

  # GET /divisons or /divisons.json
  def index
    @divisons = Divison.all
  end

  # GET /divisons/1 or /divisons/1.json
  def show
  end

  # GET /divisons/new
  def new
    @divison = Divison.new
  end

  # GET /divisons/1/edit
  def edit
  end

  # POST /divisons or /divisons.json
  def create
    @divison = Divison.new(divison_params)

    respond_to do |format|
      if @divison.save
        format.html { redirect_to divison_url(@divison), notice: "Divison was successfully created." }
        format.json { render :show, status: :created, location: @divison }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @divison.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /divisons/1 or /divisons/1.json
  def update
    respond_to do |format|
      if @divison.update(divison_params)
        format.html { redirect_to divison_url(@divison), notice: "Divison was successfully updated." }
        format.json { render :show, status: :ok, location: @divison }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @divison.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /divisons/1 or /divisons/1.json
  def destroy
    @divison.destroy

    respond_to do |format|
      format.html { redirect_to divisons_url, notice: "Divison was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_divison
      @divison = Divison.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def divison_params
      params.require(:divison).permit(:name, :desc, :team, :manager)
    end
end
