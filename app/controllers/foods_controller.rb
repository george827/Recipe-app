class FoodsController < ApplicationController
  def index
    @user = current_user
    @foods = Food.includes(:user).where(user: @current_user)
  end

  def show
    @food = Food.find(params[:id])
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    if @food.save
      redirect_to foods_path, notice: "food #{@food.name} was successfully created!"
    else
      # render :new, notice: 'food could not be created!'
      redirect_to new_food_path, notice: 'food could not be created!'
    end
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    redirect_to foods_path, notice: "food #{@food.name} deleted successfully!"
  end

  private

  def food_params
    params.require(:food).permit(:name, :user_id, :measurement_unit, :price)
  end
end
