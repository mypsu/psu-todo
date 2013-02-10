class Task < ActiveRecord::Base
  attr_accessible :description, :duedate, :importance, :name, :produceddocuments, :project_id, :status, :user_id
  belongs_to :project
  belongs_to :user
  has_many :comment
end
