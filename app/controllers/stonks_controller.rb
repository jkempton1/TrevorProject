class StonksController < ApplicationController
  before_action :set_stonk, only: %i[ show edit update destroy ]

  # GET /stonks or /stonks.json
  def index
    @stonks = Stonk.all
  end

  # GET /stonks/1 or /stonks/1.json
  def show
  end

  # GET /stonks/new
  def new
    @stonk = Stonk.new
  end

  # GET /stonks/1/edit
  def edit
  end

  # POST /stonks or /stonks.json
  def create
    @stonk = Stonk.new(stonk_params)

    respond_to do |format|
      if @stonk.save
        format.html { redirect_to stonk_url(@stonk), notice: "Stonk was successfully created." }
        format.json { render :show, status: :created, location: @stonk }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @stonk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stonks/1 or /stonks/1.json
  def update
    respond_to do |format|
      if @stonk.update(stonk_params)
        format.html { redirect_to stonk_url(@stonk), notice: "Stonk was successfully updated." }
        format.json { render :show, status: :ok, location: @stonk }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @stonk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stonks/1 or /stonks/1.json
  def destroy
    @stonk.destroy

    respond_to do |format|
      format.html { redirect_to stonks_url, notice: "Stonk was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stonk
      @stonk = Stonk.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stonk_params
      params.require(:stonk).permit(:stock_name, :stock_abbreviation, :stock_type, :current_price, :bought_price)
    end
end
