class ChangeColumnType < ActiveRecord::Migration
  def up
	change_table :taskdependents do |t|
		t.change :dep_id, :integer
	end
  end

  def down
	change_table :taskdependents do |t|
		t.change :dep_id, :integer
	end
  end
end
