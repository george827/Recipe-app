class RecipesController < ApplicationController
  def index
    @recipes = current_user.recipes
  end

  def show
    @recipe = Recipe.find(params[:id])
    @ingridients = RecipeFood.where(recipe_id: params[:id]).includes(:food)
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to recipes_path, notice: "recipe #{@recipe.name} was successfully created!"
    else
      # render :new, notice: 'recipe could not be created!'
      redirect_to new_recipe_path, notice: 'recipe could not be created!'
    end
  end

  def update
    recipe = Recipe.find(params[:id])
    recipe.update(public: !recipe.public)

    redirect_to recipe_path(recipe.id), notice: "The recipe is now #{recipe.public ? 'public' : 'private'}!"
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_path, notice: "recipe #{@recipe.name} deleted successfully!"
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :user_id, :description, :cooking_time, :preparation_time, :public)
  end
end
