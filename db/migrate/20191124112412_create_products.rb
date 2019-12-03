class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :product_name
      t.text :image
      t.text :product_details
      t.integer :product_price
      t.string :product_category
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
