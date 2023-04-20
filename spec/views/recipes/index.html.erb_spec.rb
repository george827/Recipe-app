require 'rails_helper'

RSpec.describe 'recipes/index.html.erb', type: :view do
  describe 'integration tests for recipes page' do
    before(:each) do
      @user = User.create(name: 'sam', email: 'mugisha@gmail.com', password: '123456')
      @recipe = Recipe.create(name: 'pizza', user_id: @user.id, preparation_time: 34, cooking_time: 45,
                              description: 'hello this is recipe', public: true)
      @recipe = Recipe.create(name: 'spicey', user_id: @user.id, preparation_time: 34, cooking_time: 45,
                              description: 'hello this is recipe', public: true)
      @recipe = Recipe.create(name: 'coffee', user_id: @user.id, preparation_time: 34, cooking_time: 45,
                              description: 'hello this is recipe', public: true)
      visit user_session_path

      fill_in 'Email', with: 'mugisha@gmail.com'
      fill_in 'Password', with: '123456'

      click_button 'Log in'
      visit recipes_path
    end

    scenario 'check if recipes are available' do
      expect(page).to have_content 'pizza'
      expect(page).to have_content 'spicey'
      expect(page).to have_content 'coffee'
    end
  end
end
