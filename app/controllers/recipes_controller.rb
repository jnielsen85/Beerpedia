class RecipesController < ApplicationController
  before_action :check_for_login

def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find params[:id]
  end

  def new
    @recipe = Recipe.new
  end

  def create
    recipe = Recipe.new recipe_params
    @current_user.recipes << recipe
    redirect_to recipe
  end

  def edit
    @recipe = Recipe.find params[:id]
  end

  def update
     recipe = Recipe.find params[:id]
     recipe.update recipe_params
     redirect_to recipe
  end

  def destroy
    # redirect_to root_path unless @current_user.recipe_ids.include? params[:id]
    recipe = Recipe.find params[:id]
    recipe.destroy
    redirect_to recipes_path
  end

  private
  def recipe_params
    params.require(:recipe).permit(:name, :description, :acv, :color, :difficulty, :ingredients, :directions, :equipment, :image, :style_id)
  end
end
