class AddNameToProject < ActiveRecord::Migration
  def change
    add_column :projects, :name, :string
    add_column :projects, :description, :string
  end
end
