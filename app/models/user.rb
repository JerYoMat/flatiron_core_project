class User < ApplicationRecord
  has_many :tips 
  has_many :ratings 

  
  before_save { email.downcase! }
  before_save { username.downcase! }
  has_secure_password 
  validates :username,  presence: true, length: { maximum: 255 }, uniqueness: {case_sensitive: false}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX }, uniqueness: {case_sensitive: false}
  validates :school_relationship, inclusion: { in: %w(student graduate not_affiliated)}
  validates :password, presence: true, length: {minimum: 7}, allow_nil: true
  
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

end
