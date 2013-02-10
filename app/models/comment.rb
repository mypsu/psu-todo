class Comment < ActiveRecord::Base
  attr_accessible :comment, :task_id
  belongs_to :task
end
