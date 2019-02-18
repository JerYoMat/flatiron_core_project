class Rating < ApplicationRecord
  validates :tip_id, presence: true 
  validates :user_id, presence: true
  validates :score, presence: true 
  belongs_to :tip 
  belongs_to :user 
end
