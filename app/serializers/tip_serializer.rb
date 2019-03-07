class TipSerializer < ActiveModel::Serializer
  attributes :id, :title, :link, :resource_type, :time_requirement, :other_info
end
