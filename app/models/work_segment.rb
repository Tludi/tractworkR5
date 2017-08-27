class WorkSegment < ApplicationRecord
  belongs_to :workday
  has_many :timePunches, -> {limit(2)}

  accepts_nested_attributes_for :timePunches

  def self.retrieve_current_segment(workday)
    workday_segments = workday.workSegments
    if workday_segments.empty?
      # create a new work segment if non exist for today
      @current_segment = createWorkSegment(workday)
    else
      @current_segment = workday_segments.last
      # check how many time punches for the last segment
      # if timepunch count is 2 or less return segment
      # if @current_segment.timePunches.count <= 2
      #   @current_segment
      # else
        
      #   @current_segment = createWorkSegment(workday)
      # end
    end
  end



  def self.createWorkSegment(workday)
    WorkSegment.create(workday_id: workday.id)
  end
end


# check if any segments exist for the workday
# if segments exist, get last segment
  # check how many time puches last segment has
    # 0 - Should never happen unless user deleted
    # 1 - TP should be created with segment creation - show TP
    # 2 - Show TP
# if no segments, create first segment

# when creating a TP, check parent segment for TP count
  # if TP count = 1, show TP
