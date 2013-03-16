class Taskdep < ActiveRecord::Base
  attr_accessible :child_id, :create, :destroy, :parent_id
  belongs_to :parent, :class_name => "Task"
  belongs_to :child, :class_name => "Task"
end
