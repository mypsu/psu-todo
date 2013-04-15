class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def report
  current_user.tasks.where(:status => 'NOTSTARTED').count
  @pie = Igs::PieChart.new('Task Status',200,0.4,'body',{'Not Started'=>current_user.tasks.where(:status => 'NOTSTARTED').count,'Started'=>current_user.tasks.where(:status => 'STARTED').count,'Finished'=>current_user.tasks.where(:status => 'FINISH').count})
  end
end
