class Topic < ApplicationRecord
    validates :unit_id, presence: true 
    belongs_to :unit 
    has_many :ratings 
    has_many :topic_tips 
    has_many :tips, through: :topic_tips
end
