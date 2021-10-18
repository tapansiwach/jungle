require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    # validation tests/examples here
    it "is valid if name, price, quantity & category are provided" do
      category = Category.new()
      product = category.products.new({
        name:  'Men\'s Classy shirt',
        quantity: 10,
        price: 64.99
      })
      expect(product).to be_valid 
    end
    # validates :name, presence :true
    it "is not valid without a name" do
      category = Category.new()
      product = category.products.new({
        # name:  'Men\'s Classy shirt',
        quantity: 10,
        price: 64.99
      })
      expect(product).to_not be_valid 
    end
    # validates :price, presence :true
    it "is not valid without a price" do
      category = Category.new()
      product = category.products.new({
        name:  'Men\'s Classy shirt',
        quantity: 10,
        # price: 64.99
      })
      expect(product).to_not be_valid 
    end
    # validates :quantity, presence :true
    it "is not valid without a quantity" do
      category = Category.new()
      product = category.products.new({
        name:  'Men\'s Classy shirt',
        # quantity: 10,
        price: 64.99
      })
      expect(product).to_not be_valid 
    end
    # validates :category, presence :true
    it "is not valid without a category" do
      product = Product.new({
        name:  'Men\'s Classy shirt',
        quantity: 10,
        price: 64.99
      })
      expect(product).to_not be_valid 
    end
  end
end
