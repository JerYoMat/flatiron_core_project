class TopicSerializer < ActiveModel::Serializer
  attributes :id, :title, :course_order
  has_many :tips
 
end
