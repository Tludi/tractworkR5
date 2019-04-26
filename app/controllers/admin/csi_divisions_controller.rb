class Admin::CsiDivisionsController < Admin::AdminController
  before_action :set_admin_csi_division, only: [:show, :edit, :update, :destroy]

  # GET /admin/csi_divisions
  # GET /admin/csi_divisions.json
  def index
    @admin_csi_divisions = CsiDivision.all
  end

  # GET /admin/csi_divisions/1
  # GET /admin/csi_divisions/1.json
  def show
  end

  # GET /admin/csi_divisions/new
  def new
    @admin_csi_division = Admin::CsiDivision.new
  end

  # GET /admin/csi_divisions/1/edit
  def edit
  end

  # POST /admin/csi_divisions
  # POST /admin/csi_divisions.json
  def create
    @admin_csi_division = Admin::CsiDivision.new(admin_csi_division_params)

    respond_to do |format|
      if @admin_csi_division.save
        format.html { redirect_to @admin_csi_division, notice: 'Csi division was successfully created.' }
        format.json { render :show, status: :created, location: @admin_csi_division }
      else
        format.html { render :new }
        format.json { render json: @admin_csi_division.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/csi_divisions/1
  # PATCH/PUT /admin/csi_divisions/1.json
  def update
    respond_to do |format|
      if @admin_csi_division.update(admin_csi_division_params)
        format.html { redirect_to @admin_csi_division, notice: 'Csi division was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_csi_division }
      else
        format.html { render :edit }
        format.json { render json: @admin_csi_division.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/csi_divisions/1
  # DELETE /admin/csi_divisions/1.json
  def destroy
    @admin_csi_division.destroy
    respond_to do |format|
      format.html { redirect_to admin_csi_divisions_url, notice: 'Csi division was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_csi_division
      @csi_division = CsiDivision.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_csi_division_params
      params.require(:csi_division).permit(:divnum, :divtitle, :groupname, :subgroupname)
    end
end
