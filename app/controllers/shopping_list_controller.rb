class ShoppingListController < ApplicationController
  def index
    @recipe_foods = current_user.recipe_foods.includes(:food)
  end
end
