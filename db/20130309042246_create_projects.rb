class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :owner
      t.date :start_date
      t.date :end_date
      t.string :taskList

      t.timestamps
    end
  end
end
