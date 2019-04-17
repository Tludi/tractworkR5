class MaterialSerializer < ActiveModel::Serializer
  attributes :id, :divnum, :divname, :description, :defmeasure, :cost
end
