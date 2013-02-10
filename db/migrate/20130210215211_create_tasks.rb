class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.date :duedate
      t.string :importance
      t.string :status
      t.string :produceddocuments
      t.integer :project_id
      t.integer :user_id

      t.timestamps
    end
  end
end
