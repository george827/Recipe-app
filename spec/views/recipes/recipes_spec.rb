require 'rails_helper'

RSpec.feature 'Recipe index', type: :feature do
  background do
    login_user
    visit recipes_path
  end

  scenario 'Should display a created recipe' do
    expect(page).to have_content('Cake')
  end

  scenario 'Should display the recipe details' do
    expect(page).to have_content('This is a really good cake!')
  end

  scenario 'Should display a delete button' do
    expect(page).to have_content('Remove')
  end
end
