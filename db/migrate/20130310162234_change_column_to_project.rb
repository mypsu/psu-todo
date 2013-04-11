class ChangeColumnToProject < ActiveRecord::Migration
  def up
	rename_column :projects, :userid, :user_id
  end

  def down
	rename_column :projects, :user_id, :userid
  end
end
