class AddColToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :name, :string
    add_column :projects, :description, :string
    add_column :projects, :userid, :integer
  end
end
