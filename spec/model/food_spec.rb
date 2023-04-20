require 'rails_helper'

RSpec.describe Food, type: :model do
  subject { Food.new(name: 'Banana', measurement_unit: 'Unit', price: 2) }
  before { subject.save }

  it 'Name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'Measurement unit should be present' do
    subject.measurement_unit = nil
    expect(subject).to_not be_valid
  end

  it 'Price should be present' do
    subject.price = nil
    expect(subject).to_not be_valid
  end

  it 'Price should be a number' do
    subject.price = 'One'
    expect(subject).to_not be_valid
  end

  it 'Price should be a number bigger than 0' do
    subject.price = -1
    expect(subject).to_not be_valid
  end
end
