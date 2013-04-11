class CreateTaskdeps < ActiveRecord::Migration
  def change
    create_table :taskdeps do |t|
      t.integer :parent_id
      t.integer :child_id
      t.string :create
      t.string :destroy

      t.timestamps
    end

    add_index :taskdeps, :parent_id
    add_index :taskdeps, :child_id
    add_index :taskdeps, [:parent_id, :child_id], unique: true

  end
end
