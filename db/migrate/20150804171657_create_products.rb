class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :manufacturer
      t.string :model
      t.float :weight
      t.float :height
      t.float :width
      t.float :length
      t.float :price
      t.text :description
      t.integer :year
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
