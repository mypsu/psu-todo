class Task < ActiveRecord::Base
  attr_accessible :project_id, :completed, :description, :status, :comments
  validates :description, :length => {:maximum => 300}
  validates :project_id, presence: true
  belongs_to :project
  has_one :user, :through => :project
  has_many :taskdeps, foreign_key: "parent_id", dependent: :destroy
  has_many :child, through: :taskdeps

  has_many :taskdependents
  has_many :deps, :through => :taskdependents
  has_many :inverse_taskdependents, :class_name => "Taskdependent", :foreign_key => "dep_id"
  has_many :inverse_deps, :through => :inverse_taskdependents, :source => :task

  



end
