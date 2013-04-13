class Taskdependents < ActiveRecord::Base
  attr_accessible  :dep_id, :task_id

  belongs_to :task
  belongs_to :cling, :class_name => "Task"
end
