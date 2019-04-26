class Admin::CsiDivisionSerializer < ActiveModel::Serializer
  attributes :id, :divnum, :divtitle, :groupname, :subgroupname
end
