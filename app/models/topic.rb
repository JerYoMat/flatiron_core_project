class Topic < ApplicationRecord
    validates :unit_id, presence: true 
    belongs_to :unit 
    has_many :lessons 
    
end
