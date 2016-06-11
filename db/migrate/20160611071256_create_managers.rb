class CreateManagers < ActiveRecord::Migration
  def change
    create_table :managers do |t|
      t.string :name
      t.string :role
      t.string :phone_no

      t.timestamps null: false
    end
  end
end
