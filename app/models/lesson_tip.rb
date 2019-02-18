class LessonTip < ApplicationRecord
  belongs_to :lesson 
  belongs_to :tip 
end
