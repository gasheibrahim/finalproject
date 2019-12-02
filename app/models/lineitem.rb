class Lineitem < ApplicationRecord
  belongs_to :product
  belongs_to :cart
  def total_price
    product.product_price.to_i * quantity.to_i
  end
end
