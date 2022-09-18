require 'rails_helper'

RSpec.describe Product, type: :model do

describe 'Validation' do
  it 'validates the product name is true' do
    @category = Category.new(name: "Bonsai")
    @category.save
    @product = Product.new(name: "", description: "Its a plant", category_id: @category.id, quantity: 3, image: "plant", price: 2000)
    @product.save

    expect(@product).to_not be_valid
    expect(@product.errors.full_messages).to include("Name can't be blank")
    end
  
  it 'validates the price is present' do
    @category = Category.new(name: "Shrub")
    @category.save
    @product = Product.new(name: "Amazing Shrub", description: "Its a shrub", category_id: @category.id, quantity: 3, image: "plant" )
    @product.save

    expect(@product).to_not be_valid
    expect(@product.errors.full_messages).to include("Price can't be blank")
    end

   it 'validates the quantity is present' do
    @category = Category.new(name: "Shrub")
    @category.save
    @product = Product.new(name: "Amazing Tree", description: "Its a tree", category_id: @category.id, image: "plant", price: 9099 )
    @product.save

    expect(@product).to_not be_valid
    expect(@product.errors.full_messages).to include("Quantity can't be blank")
    end

    it 'validates the category is present' do
     
      @product = Product.new(name: "Amazing Shrub", description: "Its a shrub", quantity: 3, image: "plant" )
      @product.save
  
      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include("Category can't be blank")
      end
  







  end
end