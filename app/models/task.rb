class Task < ActiveRecord::Base
  attr_accessible :project_id, :completed, :description
  validates :description, :length => {:maximum => 300}
  validates :project_id, presence: true
  belongs_to :project
  has_one :user, :through => :project
  has_many :taskdeps, foreign_key: "parent_id", dependent: :destroy
  has_many :child, through: :taskdeps



  def master_task?(other_task)
    taskdeps.find_by_child_id(other_task.id)
  end

  def child_task!(other_task)
    taskdeps.create!(child_id: other_task.id)
  end

  def delete_task_dep!(other_task)
    taskdeps.find_by_child_id(other_task.id).destroy
  end 



end
