class Recipe < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :preparation_time, presence: true
  validates :cooking_time, presence: true
  validates :description, presence: true

  has_many :recipe_foods
  has_many :foods, through: :recipe_foods
end
