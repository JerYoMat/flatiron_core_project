class User < ApplicationRecord
  has_secure_password 
  validates :username,  presence: true, length: { maximum: 255 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX }
  validates :school_relationship, inclusion: { in: %w(student graduate not_affiliated)}
end
