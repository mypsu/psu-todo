class Task < ActiveRecord::Base
  attr_accessible :id, :project_id, :completed, :description, :user_id, :status, :comments, :created_at, :updated_at, :taskdependents_attributes
  validates :description, :length => {:maximum => 300}, length: {minimum: 3}
  validates :project_id, presence: true

  validates :description, presence: true, uniqueness: true

  belongs_to :project
  
  belongs_to :user
  
  has_many :taskdependents
  has_many :deps, :through => :taskdependents
  has_many :inverse_taskdependents, :class_name => "Taskdependent", :foreign_key => "dep_id"
  has_many :inverse_deps, :through => :inverse_taskdependents, :source => :task

  accepts_nested_attributes_for :taskdependents, allow_destroy: true



end
