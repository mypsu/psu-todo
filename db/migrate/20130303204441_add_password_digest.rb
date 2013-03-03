class AddPasswordDigest < ActiveRecord::Migration
  def up
  end

  def change
	add_column :users, :password, :string
	#remove_column :user, :password, :string
  end
  def down
  end
end
