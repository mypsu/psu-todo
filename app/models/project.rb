class Project < ActiveRecord::Base
  attr_accessible :end_date, :owner, :start_date, :taskList
  has_many :tasks
  belongs_to :user
end
