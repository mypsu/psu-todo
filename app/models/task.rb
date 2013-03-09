class Task < ActiveRecord::Base
  attr_accessible :completed, :description
  validates :description, :length => {:maximum => 300}
  belongs_to :project
end
