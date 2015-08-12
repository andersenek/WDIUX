class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
    t.string :name
    t.string :condition
    t.integer :quantity
    t.string :photo_url
    end
  end
end
