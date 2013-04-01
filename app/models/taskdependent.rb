class Taskdependent < ActiveRecord::Base
  attr_accessible  :dep_id,  :task_id

  belongs_to :task
  belongs_to :dep, :class_name => "Task"
end
