class Tip < ApplicationRecord
    validates :user_id, presence: true 
    validates :title, presence: true, length: {maximum: 255}
    validates :link, presence: true, length: {maximum: 255}
    validates :time_requirement, presence: true 
    validates :resource_type, presence: true
    has_many :ratings 
    belongs_to :user 
    has_many :topic_tips 
    has_many :topics, through: :topic_tips
end
