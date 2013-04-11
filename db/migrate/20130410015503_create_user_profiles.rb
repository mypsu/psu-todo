class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.string :address
      t.string :city
      t.string :email
      t.string :firstname
      t.string :lastname
      t.string :phone
      t.string :state
      t.string :user_id
      t.string :zip

      t.timestamps
    end
  end
end
