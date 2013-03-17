class Task < ActiveRecord::Base
  attr_accessible :project_id, :completed, :description
  validates :description, :length => {:maximum => 300}
  validates :project_id, presence: true
  belongs_to :project
#  belongs_to :user, :through => :project

  has_many     :parent_child_relationships,
               :class_name            => "taskdep",
               :foreign_key           => :child_id,
               :dependent             => :destroy
  has_many     :parents,
               :through               => :parent_child_relationships,
               :source                => :parent

  has_many     :child_parent_relationships,
               :class_name            => "taskdep",
               :foreign_key           => :parent_id,
               :dependent             => :destroy
  has_many     :children,
               :through               => :child_parent_relationships,
               :source                => :child

end
