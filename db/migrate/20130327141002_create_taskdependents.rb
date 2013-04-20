class CreateTaskdependents < ActiveRecord::Migration
  def change
    create_table :taskdependents do |t|
      t.integer :task_id
      t.integer :dep_id

      t.timestamps
    end
  end
end
