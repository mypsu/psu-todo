class Project < ActiveRecord::Base
  attr_accessible :user_id, :description, :end_date, :name, :owner, :start_date, :taskList, :tasks_attributes
  #attr_accessible :user_id, :description, :end_date, :name, :owner, :start_date, :taskList, :projects_attributes
  belongs_to :user
  validates :user_id, presence: true
  validates :name, presence: true, length: {minimum: 3}

  has_many :tasks, dependent: :destroy

  accepts_nested_attributes_for :tasks, allow_destroy: true

  default_scope order: 'projects.created_at DESC'
end
