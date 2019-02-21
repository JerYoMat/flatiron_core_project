class TopicTip < ApplicationRecord
  validates :topic_id, presence: true 
  validates :tip_id, presence: true
  belongs_to :topic 
  belongs_to :tip 
end
