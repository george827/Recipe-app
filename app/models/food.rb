class Food < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :measurement_unit, presence: true
  validates :price, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  has_many :recipe_foods, dependent: :destroy
  has_many :recipes, through: :recipe_foods
end
