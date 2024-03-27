class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.integer :stock
      t.string :brand
      t.string :supplier

      t.timestamps
    end
  end
end
