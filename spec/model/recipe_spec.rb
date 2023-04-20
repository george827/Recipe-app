require 'rails_helper'

RSpec.describe Recipe, type: :model do
  subject do
    Recipe.new(
      name: 'Delicious cake',
      preparation_time: 50,
      cooking_time: 90,
      description: 'This is a really good cake!',
      public: true
    )
  end
  before { subject.save }

  it 'Name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'Preparation time should be present' do
    subject.preparation_time = nil
    expect(subject).to_not be_valid
  end

  it 'Cooking time should be present' do
    subject.cooking_time = nil
    expect(subject).to_not be_valid
  end

  it 'Description should be present' do
    subject.description = nil
    expect(subject).to_not be_valid
  end

  it 'Cooking time should be a number' do
    subject.cooking_time = 'One'
    expect(subject).to_not be_valid
  end

  it 'Preparation time time should be a number' do
    subject.preparation_time = 'One'
    expect(subject).to_not be_valid
  end

  it 'Cooking time should be a number bigger than 0' do
    subject.cooking_time = -1
    expect(subject).to_not be_valid
  end

  it 'Preparation time time should be a number bigger than 0' do
    subject.preparation_time = -1
    expect(subject).to_not be_valid
  end
end
