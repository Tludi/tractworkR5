class WorkSegmentsController < ApplicationController
  before_action :set_work_segment, only: [:show, :edit, :update, :destroy]

  # GET /work_segments
  # GET /work_segments.json
  def index
    @work_segments = WorkSegment.all
  end

  # GET /work_segments/1
  # GET /work_segments/1.json
  def show
  end

  # GET /work_segments/new
  def new
    @work_segment = WorkSegment.new
  end

  # GET /work_segments/1/edit
  def edit
  end

  # POST /work_segments
  # POST /work_segments.json
  def create
    @work_segment = WorkSegment.new(work_segment_params)

    respond_to do |format|
      if @work_segment.save
        format.html { redirect_to @work_segment, notice: 'Work segment was successfully created.' }
        format.json { render :show, status: :created, location: @work_segment }
      else
        format.html { render :new }
        format.json { render json: @work_segment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /work_segments/1
  # PATCH/PUT /work_segments/1.json
  def update
    respond_to do |format|
      if @work_segment.update(work_segment_params)
        format.html { redirect_to @work_segment, notice: 'Work segment was successfully updated.' }
        format.json { render :show, status: :ok, location: @work_segment }
      else
        format.html { render :edit }
        format.json { render json: @work_segment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_segments/1
  # DELETE /work_segments/1.json
  def destroy
    @work_segment.destroy
    respond_to do |format|
      format.html { redirect_to work_segments_url, notice: 'Work segment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_segment
      @work_segment = WorkSegment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def work_segment_params
      params.require(:work_segment).permit(:totalTime, :estimatedTime, :status, :workday_id, :task, :timePunches => [:punch, :workSegment_id, :status])
    end
end
