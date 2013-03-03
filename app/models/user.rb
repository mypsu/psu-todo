class User < ActiveRecord::Base
  attr_accessible :password, :role_id, :username
  has_one :user_profile
  has_one :user_role

  VALIDATE_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  before_save {|user| user.username = username.downcase }

  validates :username, presence: true, length: {maximum: 50 }, format: { with:VALIDATE_REGEX }, uniqueness:true
end
