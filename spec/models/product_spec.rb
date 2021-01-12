require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it 'should save a product' do
      @product = Product.new
      expect(@product).to be_present
    end
    it 'should have a product name' do
      @product = Product.new(name: 'Test', price: 30.43, quantity: 2, category_id: 1)
      expect(@product.name).to be_present
    end
    it 'should have a product price' do
      @product = Product.new(name: 'Test', price: 30.43, quantity: 2, category_id: 1)
      expect(@product.price).to be_present
    end
    it 'should have a product quantity' do
      @product = Product.new(name: 'Test', price: 30.43, quantity: 2, category_id: 1)
      expect(@product.quantity).to be_present
    end
    it 'should have a valid category' do
      @product = Product.new(name: 'Test', price: 30.43, quantity: 2, category_id: 1)
      @category = Category.new(id: 1, name: "Test Category")
      expect(@product.category_id) === @category.id
    end
  end
end
