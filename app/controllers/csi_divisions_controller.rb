class CsiDivisionsController < ApplicationController
  before_action :set_csi_division, only: [:show, :edit, :update, :destroy]

  # GET /csi_divisions
  # GET /csi_divisions.json
  def index
    @csi_divisions = CsiDivision.all
  end

  # GET /csi_divisions/1
  # GET /csi_divisions/1.json
  def show
  end

  # GET /csi_divisions/new
  def new
    @csi_division = CsiDivision.new
  end

  # GET /csi_divisions/1/edit
  def edit
  end

  # POST /csi_divisions
  # POST /csi_divisions.json
  def create
    @csi_division = CsiDivision.new(csi_division_params)

    respond_to do |format|
      if @csi_division.save
        format.html { redirect_to @csi_division, notice: 'Csi division was successfully created.' }
        format.json { render :show, status: :created, location: @csi_division }
      else
        format.html { render :new }
        format.json { render json: @csi_division.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /csi_divisions/1
  # PATCH/PUT /csi_divisions/1.json
  def update
    respond_to do |format|
      if @csi_division.update(csi_division_params)
        format.html { redirect_to @csi_division, notice: 'Csi division was successfully updated.' }
        format.json { render :show, status: :ok, location: @csi_division }
      else
        format.html { render :edit }
        format.json { render json: @csi_division.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /csi_divisions/1
  # DELETE /csi_divisions/1.json
  def destroy
    @csi_division.destroy
    respond_to do |format|
      format.html { redirect_to csi_divisions_url, notice: 'Csi division was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_csi_division
      @csi_division = CsiDivision.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def csi_division_params
      params.require(:csi_division).permit(:divnum, :divtitle, :groupname, :subgroupname)
    end
end
