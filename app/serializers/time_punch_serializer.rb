class TimePunchSerializer < ActiveModel::Serializer
  attributes :id, :punch, :workSegment_id, :status
end
