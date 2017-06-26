class WorkdaySerializer < ActiveModel::Serializer
  attributes :id, :hoursWorked, :dayDate, :user_id, :notes
end
