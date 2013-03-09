class User < ActiveRecord::Base
  attr_accessible :password, :username
  has_secure_password
  before_save { |user| user.username = username.downcase }
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, length: {minimum: 6}
  has_many :projects
end
