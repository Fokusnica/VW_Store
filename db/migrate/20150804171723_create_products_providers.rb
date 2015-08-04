class CreateProductsProviders < ActiveRecord::Migration
  def change
    create_table :products_providers do |t|
      t.references :product, index: true, foreign_key: true
      t.references :provider, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
