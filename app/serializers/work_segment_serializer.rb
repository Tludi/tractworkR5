class WorkSegmentSerializer < ActiveModel::Serializer
  attributes :id, :totalTime, :estimatedTime, :status, :workday_id, :task
end
