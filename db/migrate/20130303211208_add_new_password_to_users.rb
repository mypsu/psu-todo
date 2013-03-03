class AddNewPasswordToUsers < ActiveRecord::Migration
  def change
    add_column :users, :password, :string
  end
end
