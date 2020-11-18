require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "Validations" do
  it 'ensures name is present' do
    @table = Product.create(price: 30, quantity: 1)
    expect(@table).to_not be_valid
    expect(@table.errors.messages[:name]).to eq ['can\'t be blank']
  end
  it 'ensures price is present' do
    @table = Product.create(name: 'Table', quantity: 1)
    expect(@table).to_not be_valid
    expect(@table.errors.full_messages).to include('Price can\'t be blank')
  end
  it 'ensures quantity is present' do
    @table = Product.create(name: 'Table', price: 30)
    expect(@table).to_not be_valid
    expect(@table.errors.full_messages).to include('Quantity can\'t be blank')
  end
  it 'ensures category is present' do
    @table = Product.create(name: 'Table', price: 30, quantity: 1)
    expect(@table).to_not be_valid
    expect(@table.errors.full_messages).to include('Category can\'t be blank')
  end
  end
end
