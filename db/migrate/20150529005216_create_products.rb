class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price, precision: 8, scale: 2
      t.string :image
      t.text :description
      t.integer :rating

      t.timestamps null: true
    end
  end
end
