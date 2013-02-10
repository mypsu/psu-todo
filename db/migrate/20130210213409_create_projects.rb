class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :projectname
      t.string :project
      t.string :description
      t.date :startdate
      t.date :enddate
      t.time :starttime
      t.time :endtime
      t.string :overallcomments

      t.timestamps
    end
  end
end
