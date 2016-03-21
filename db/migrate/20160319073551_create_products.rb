class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :designer_id
      t.string :sku
      t.decimal :price
      t.text :description
      t.string :photo_url

      t.timestamps null: false
    end
  end
end
