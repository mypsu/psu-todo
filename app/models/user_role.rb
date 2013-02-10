class UserRole < ActiveRecord::Base
  attr_accessible :description
  has_many :user
end
