class DashboardController < ApplicationController
  before_action :set_account
    
  def index
    @user = current_user
    # @workday = @user.workdays.first 
    @workday = Workday.retrieve_current_workday(current_user)
    @workday_workSegments = @workday.workSegments

    # TODO Need to check for current segment before creating a new one
    @work_segment = WorkSegment.retrieve_current_segment(@workday)

    @current_time = get_current_time

    # @time_punch = @work_segment.timePunches.new
    # @latest_time_punch = @workday.timePunches.last
    # @time_punch_status = @latest_time_punch.clockedInStatus if @latest_time_punch
    # @time_punches = TimePunch.all

    # work Segment can only have 2 punches. This pulls the last work_segment
    # @current_workday_time_punches = @work_segment.timePunches.order(created_at: :desc)
    # @current_worksegment_time_punches = @work_segment.timePunches.order(created_at: :desc)
    # @current_project = Project.find(@workday.project.id)
    # @hours_worked = Workday.calculate_workhours(@workday)
    @hours_worked = Workday.calculate_workhours(@workday)
    @hours_saved = @workday.totalHoursWorked
  end




    private

    def check_for_current_workday
      Workday.retrieve_current_workday(current_user)
    end

    def get_current_time
      Time.zone.today
    end

    def set_account
      @account = current_user.account
    end
end
