require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    let(:category) { Category.create! name: 'Test' }
    let(:product) { category.products.create!(
      name: 'Sample',
      quantity: 99,
      price: 99.99,
      )}
    it 'should save correctly to db' do
      expect(product).to be_valid
    end
    it 'should validate name' do
      product.name = nil
      expect {product.save!}.to raise_error(ActiveRecord::RecordInvalid)
    end
    it 'should validate price' do
      product.price_cents = nil
      expect {product.save!}.to raise_error(ActiveRecord::RecordInvalid)
    end
    it 'should validate quantity' do
      product.quantity = nil
      expect {product.save!}.to raise_error(ActiveRecord::RecordInvalid)
    end
    it 'should validate category' do
      product.category = nil
      expect {product.save!}.to raise_error(ActiveRecord::RecordInvalid)
    end
  end
end
