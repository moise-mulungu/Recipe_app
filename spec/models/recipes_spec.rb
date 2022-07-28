require 'rails_helper'
RSpec.describe Recipe, type: :model do
  it 'valid if name is present' do
    @user = User.create!(name: 'Moise', email: 'moisemlg90@gmail.com', password: 'moise123', role: 'admin')
    @recipe = @user.recipes.create(name: 'Chapati', description: 'Chapati is a flour, onion and spices food fried in oil', preparation_time: '10 minutes', cooking_time: '30 minutes')
    expect(@recipe).to be_valid
  end

  
end
        