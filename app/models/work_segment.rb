class WorkSegment < ApplicationRecord
  belongs_to :workday
  has_many :timePunches

  accepts_nested_attributes_for :timePunches

  def self.retrieve_current_segment(workday)
    workday_segments = workday.workSegments
    if workday_segments.empty?
      @current_segment = createWorkSegment(workday)
    else
      @current_segment = workday_segments.last
      if @current_segment.timePunches.count < 2
        @current_segment
      else
        @current_segment = createWorkSegment(workday)
      end
    end
  end



  def self.createWorkSegment(workday)
    WorkSegment.create(workday_id: workday.id)
  end
end


# check if any segments exist
# if segments exist, get last segment
# if no segments, create first segment
