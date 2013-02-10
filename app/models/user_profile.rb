class UserProfile < ActiveRecord::Base
  attr_accessible :address, :city, :email, :firstname, :lastname, :phone, :state, :user_id, :zip
  belongs_to :user
end
