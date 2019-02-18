class Rating < ApplicationRecord
  belongs_to :tip 
  belongs_to :user 
end
