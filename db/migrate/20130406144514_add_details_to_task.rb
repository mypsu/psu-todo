class AddDetailsToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :comments, :string
    add_column :tasks, :status, :string
  end
end
