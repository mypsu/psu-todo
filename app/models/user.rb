class User < ActiveRecord::Base
  #attr_accessible :password, :username
  attr_accessible :password, :username, :projects_attributes

  has_secure_password
  before_save { |user| user.username = username.downcase }
  before_save :create_remember_token
  
#  validates :username, presence: true, uniqueness: true
  VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :username, presence: true, uniqueness: true,format: { with: VALID_EMAIL }

  #validates :password, presence: true, length: {minimum: 6}
  has_many :projects, dependent: :destroy
  has_many :tasks, :through => :projects

  accepts_nested_attributes_for :projects, allow_destroy: true

  private
	def create_remember_token
		self.remember_token = SecureRandom.urlsafe_base64
	end
end
