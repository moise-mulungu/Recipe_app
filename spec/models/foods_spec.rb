require 'rails_helper'
RSpec.describe Food, type: :model do
  it 'valid if name is present' do
    @user = User.create!(name: 'Nemwel', email: 'nemwel@gmail.com', password: 'nemwel123', role: 'admin')
    @food = @user.foods.create(name: 'Ugali', measurement_unit: 'grams', price: 150, quantity: 2)
    expect(@food).to be_valid
  end
  it 'invalid if name is absent' do
    @user = User.create!(name: 'Nemwel', email: 'nemwel@gmail.com', password: 'nemwel123', role: 'admin')
    @food = @user.foods.create(measurement_unit: 'grams', price: 50)
    expect(@food).to_not be_valid
  end
  it 'A food must be associated with a user' do
    @food = Food.create(name: 'Ugali', measurement_unit: 'grams', price: 500)
    expect(@food).to_not be_valid
  end
  it 'valid if User is present' do
    @user = User.create!(name: 'Nemwel', email: 'nemwel@gmail.com', password: 'nemwel123', role: 'admin')
    @food = @user.foods.create(name: 'Ugali', measurement_unit: 'grams', price: 50, quantity: 2)
    expect(@food).to be_valid
  end
  it 'valid if name is present' do
    @user = User.create!(name: 'Nemwel', email: 'nemwel@gmail.com', password: 'nemwel123', role: 'admin')
    @food = @user.foods.create(name: 'Ugali', measurement_unit: 'grams', price: 150, quantity: 2)
    expect(@food).to be_valid
  end
  it 'Food must have a price' do
    @user = User.create!(name: 'Nemwel', email: 'nemwel@gmail.com', password: 'nemwel123', role: 'admin')
    @food = @user.foods.create(name: 'Ugali', measurement_unit: 'grams', price: 50, quantity: 2)
    expect(@food).to be_valid
  end
  it 'invalid if price is absent' do
    @user = User.create!(name: 'Nemwel', email: 'nemwel@gmail.com', password: 'nemwel123', role: 'admin')
    @food = @user.foods.create(name: 'Ugali', measurement_unit: 'grams')
    expect(@food).to_not be_valid
  end
  it 'Must have a measurement_unit' do
    @user = User.create!(name: 'Nemwel', email: 'nemwel@gmail.com', password: 'nemwel123', role: 'admin')
    @food = @user.foods.create(name: 'Ugali', measurement_unit: 'grams', price: 50, quantity: 2)
    expect(@food).to be_valid
  end
  it 'invalid if price is absent' do
    @user = User.create!(name: 'Nemwel', email: 'nemwel@gmail.com', password: 'nemwel123', role: 'admin')
    @food = @user.foods.create(name: 'Ugali', price: 570)
    expect(@food).to_not be_valid
  end
end
