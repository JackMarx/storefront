class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :url
      t.integer :product_id

      t.timestamps null: true
    end
  end
end
