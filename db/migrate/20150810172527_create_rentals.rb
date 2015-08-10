class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.string :name
      t.string :type
      t.string :request
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.integer :user_id
    end
  end
end
