class WorkSegment < ApplicationRecord
  belongs_to :workday
  has_many :timePunches
end
