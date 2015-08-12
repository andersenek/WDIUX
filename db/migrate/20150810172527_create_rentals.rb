class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.string :name
      t.string :staff
      t.string :email
      t.string :phone
      t.string :item
      t.datetime :daterental
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.integer :user_id
    end
  end
end
