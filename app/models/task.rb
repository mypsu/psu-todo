class Task < ActiveRecord::Base
  attr_accessible :project_id, :completed, :description
  validates :description, :length => {:maximum => 300}
  validates :project_id, presence: true
  belongs_to :project
end
