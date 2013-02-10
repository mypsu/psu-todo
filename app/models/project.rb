class Project < ActiveRecord::Base
  attr_accessible :description, :enddate, :endtime, :overallcomments, :project, :projectname, :startdate, :starttime
end
