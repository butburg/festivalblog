class User < ApplicationRecord

  before_validation :strip_whitespace

  before_save { email.downcase! }

  validates :username, presence: true, length: {maximum: 50}, uniqueness: true
  validates :email, presence: true, length: {maximum: 255}, uniqueness: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: {with: VALID_EMAIL_REGEX}

  has_secure_password
  validates :password, presence: true, length: {minimum: 6}

  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  def strip_whitespace
    self.username = self.username.strip unless self.username.nil?
  end
end
