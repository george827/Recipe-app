class RecipeFoodsController < ApplicationController
  def new
    @recipe_food = RecipeFood.new
    @recipe = Recipe.find(params[:recipe_id])
    @foods = Food.all
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_food = RecipeFood.new(recipe_food_params)
    @recipe_food.recipe_id = @recipe.id

    if @recipe_food.save
      redirect_to recipe_path(params[:recipe_id]), notice: 'recipe_food was successfully created!'
    else
      redirect_to recipe_path(params[:recipe_id]), notice: 'recipe_food could not be created!'
    end
  end

  def edit
    @recipe_food = RecipeFood.find(params[:id])
    @foods = Food.all
  end

  def update
    recipe_food = RecipeFood.find(params[:id])

    if recipe_food.update(recipe_food_params)
      redirect_to recipe_path(params[:recipe_id]), notice: 'Ingredient was edited successfully!'
    else
      redirect_to recipe_path(params[:recipe_id]), notice: 'Error editing ingredient!'
    end
  end

  def destroy
    @recipe_food = RecipeFood.includes(:food).find(params[:id])
    @recipe_food.destroy
    redirect_to recipe_path(params[:recipe_id]), notice: 'recipe_food  deleted successfully!'
  end

  private

  def recipe_food_params
    params.require(:recipe_food).permit(:food_id, :recipe_id, :quantity)
  end
end
