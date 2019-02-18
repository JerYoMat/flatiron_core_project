class Unit < ApplicationRecord
    has_many :topics
    has_many :lessons 
end
