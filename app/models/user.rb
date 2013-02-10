class User < ActiveRecord::Base
  attr_accessible :password, :role_id, :username
  has_one :user_profile
  has_one :user_role
end
