class Lesson < ApplicationRecord
    belongs_to :topic 
    belongs_to :unit 
    has_many :ratings 
    has_many :lesson_tips 
    has_many :tips, through: :lesson_tips
end
