class ChangeColumnType < ActiveRecord::Migration
  def change
	change_table :taskdependents do |t|
		t.change :dep_id, :integer
	end
  end

end
