require 'rails_helper'

RSpec.feature 'Recipe index', type: :feature do
  background do
    login_user
    visit foods_path
  end

  scenario 'Should display an added food' do
    expect(page).to have_content(@food.name)
  end

  scenario 'Should display the food measurement unit' do
    expect(page).to have_content(@food.measurement_unit)
  end

  scenario 'Should display the food price' do
    expect(page).to have_content('1.0')
  end

  scenario 'Should display a delete button' do
    expect(page).to have_content('Delete')
  end
end
