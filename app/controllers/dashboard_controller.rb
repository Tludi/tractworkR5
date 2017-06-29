class DashboardController < ApplicationController
  before_action :set_account
    
  def index
    @user = current_user
    # @workday = @user.workdays.first 
    @workday = Workday.retrieve_current_workday(current_user)

    # TODO Need to check for current segment before creating a new one
    @work_segment = WorkSegment.retrieve_current_segment(@workday)

    @current_time = get_current_time

    @time_punch = @work_segment.timePunches.new
    # @latest_time_punch = @workday.timePunches.last
    # @time_punch_status = @latest_time_punch.clockedInStatus if @latest_time_punch
    # @current_workday_time_punches = @workday.timePunches.order(created_at: :desc)

    # @current_project = Project.find(@workday.project.id)
    # @hours_worked = Workday.calculate_workhours(@workday)
    @hours_worked = 6.5
    @hours_saved = @workday.hoursWorked
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
