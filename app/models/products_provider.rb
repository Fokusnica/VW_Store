class ProductsProvider < ActiveRecord::Base
  belongs_to :product
  belongs_to :provider
end
