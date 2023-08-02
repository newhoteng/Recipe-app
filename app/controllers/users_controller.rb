class UsersController < ApplicationController
  def shopping
    @recipes = Recipe.includes(:recipe_foods).where(user_id: current_user.id)
    @user_general_food_list = current_user.foods

    @lists = []
  end
end
