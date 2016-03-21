class CreateDesigners < ActiveRecord::Migration
  def change
    create_table :designers do |t|
      t.string :name
      t.string :surname
      t.string :cell_number
      t.string :email
      t.string :address_line_1
      t.string :address_line_2
      t.string :address_line_3
      t.string :surburb
      t.string :city
      t.string :province
      t.string :country
      t.string :post_code
      t.text :bio
      t.string :photo_url

      t.timestamps null: false
    end
  end
end
