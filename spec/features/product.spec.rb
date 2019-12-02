# In this require, the feature required for Feature Spec such as Capybara are available.
require 'rails_helper'
# On the right side of this RSpec.feature, write the test item name like "task management feature" (grouped by do ~ end)
RSpec.feature "Product management function", type: :feature do
 # In scenario (alias of it), write the processing of the test for each item you want to check.
 
 scenario "Test Product creation" do
  @user=User.create!(email:"ibra@gmail.com", password:"1234567")
  visit new_product_path
  fill_in  'product_name' ,  with: 'completed'
  click_on  'New Product'
end
 scenario "Test task list" do
   @product=Product.all
   assert @product
 end

end


