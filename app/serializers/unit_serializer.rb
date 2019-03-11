class UnitSerializer < ActiveModel::Serializer
  attributes :id, :title, :image_path
  has_many :topics
end
