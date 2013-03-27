class Taskdep < ActiveRecord::Base
  attr_accessible :child_id, :parent_id

  belongs_to :task
  belongs_to :parent, :class_name => "Task"
  belongs_to :child, :class_name => "Task"

  validates :parent_id, presence: true
  validates :child_id, presence: true

end
