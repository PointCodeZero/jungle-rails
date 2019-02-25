require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it 'is not valid without a name' do
      cat1 = Category.new(:name => true)
      prod1 = Product.new(:name => nil, :price => 40, :quantity => 34, :category => cat1)
      expect(prod1).to_not be_valid
      expect(prod1.errors.full_messages).to include("Name can't be blank")
    end

    it 'is not valid without a price' do
      cat2 = Category.new(:name => true)
      prod2 = Product.new(:name => 'Hat', :price => nil, :quantity => 34, :category => cat2)
      expect(prod2).to_not be_valid
      expect(prod2.errors.full_messages).to include("Price can't be blank")
    end

    it 'is not valid without a quantity' do
      cat3 = Category.new(:name => true)
      prod3 = Product.new(:name => 'Book', :price => 25, :quantity => nil, :category => cat3)
      expect(prod3).to_not be_valid
      expect(prod3.errors.full_messages).to include("Quantity can't be blank")
    end

    it 'is not valid without a category' do
      prod4 = Product.new(:name => 'Umbrela', :price => 13, :quantity => 135, :category => nil)
      expect(prod4).to_not be_valid
      expect(prod4.errors.full_messages).to include("Category can't be blank")
    end

  end
end
