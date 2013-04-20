class ChangeColumnType < ActiveRecord::Migration

   def change
	   change_column :taskdependents, :dep_id, :integer
   end

end
