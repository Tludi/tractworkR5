class TimePunchesController < ApplicationController
  before_action :set_time_punch, only: [:show, :edit, :update, :destroy]

  # GET /time_punches
  # GET /time_punches.json
  def index
    @time_punches = TimePunch.all
  end

  # GET /time_punches/1
  # GET /time_punches/1.json
  def show
  end

  # GET /time_punches/new
  def new
    @time_punch = TimePunch.new
  end

  # GET /time_punches/1/edit
  def edit
  end

  # POST /time_punches
  # POST /time_punches.json
  def create
    @time_punch = TimePunch.new(time_punch_params)

    respond_to do |format|
      if @time_punch.save
        format.html { redirect_to @time_punch, notice: 'Time punch was successfully created.' }
        format.json { render :show, status: :created, location: @time_punch }
      else
        format.html { render :new }
        format.json { render json: @time_punch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /time_punches/1
  # PATCH/PUT /time_punches/1.json
  def update
    respond_to do |format|
      if @time_punch.update(time_punch_params)
        format.html { redirect_to @time_punch, notice: 'Time punch was successfully updated.' }
        format.json { render :show, status: :ok, location: @time_punch }
      else
        format.html { render :edit }
        format.json { render json: @time_punch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /time_punches/1
  # DELETE /time_punches/1.json
  def destroy
    @time_punch.destroy
    respond_to do |format|
      format.html { redirect_to time_punches_url, notice: 'Time punch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_time_punch
      @time_punch = TimePunch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def time_punch_params
      params.require(:time_punch).permit(:punch, :workSegment_id, :status)
    end
end
