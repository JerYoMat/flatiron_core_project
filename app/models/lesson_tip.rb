class LessonTip < ApplicationRecord
  validates :lesson_id, presence: true 
  validates :tip_id, presence: true
  belongs_to :lesson 
  belongs_to :tip 
end
