require 'rails_helper'

RSpec.describe 'food/index.html.erb', type: :view do
  describe 'integration tests for foods page' do
    before(:each) do
      @user = User.create(name: 'sam', email: 'mugisha@gmail.com', password: '123456')
      @food = Food.create(name: 'pizza', user_id: @user.id, measurement_unit: 'kilogram', price: 56)
      @food = Food.create(name: 'burger', user_id: @user.id, measurement_unit: 'kilogram', price: 56)
      @food = Food.create(name: 'dodo', user_id: @user.id, measurement_unit: 'kilogram', price: 56)

      visit user_session_path

      fill_in 'Email', with: 'mugisha@gmail.com'
      fill_in 'Password', with: '123456'

      click_button 'Log in'
      visit foods_path
    end

    scenario 'check if foods are available' do
      expect(page).to have_content 'pizza'
      expect(page).to have_content 'burger'
      expect(page).to have_content 'dodo'
    end
  end
end
