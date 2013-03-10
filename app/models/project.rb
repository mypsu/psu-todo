class Project < ActiveRecord::Base
  attr_accessible :user_id, :description, :end_date, :name, :owner, :start_date, :taskList
  belongs_to :user
  validates :user_id, presence: true

  default_scope order: 'projects.created_at DESC'
end
