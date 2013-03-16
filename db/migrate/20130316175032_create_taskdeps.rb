class CreateTaskdeps < ActiveRecord::Migration
  def change
    create_table :taskdeps do |t|
      t.integer :parent_id
      t.integer :child_id
      t.string :create
      t.string :destroy

      t.timestamps
    end
  end
end
