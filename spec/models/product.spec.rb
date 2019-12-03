require 'rails_helper'

RSpec.describe Product, type: :model do

  it "Validation does not pass if the product_name is empty" do
    product = Product.new(product_name: '', product_price: '', product_details: '', product_category:'')
    expect(task).not_to be_valid
  end

  it "Validation does not pass if product_details is empty" do
    # Describe the contents here
  end

  it "validation passes If product_category" do
    # Describe the contents here
  end
end