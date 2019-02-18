class Tip < ApplicationRecord
    has_many :ratings 
    belongs_to :user 
    has_many :lesson_tips 
    has_many :lessons, through: :lesson_tips
end
