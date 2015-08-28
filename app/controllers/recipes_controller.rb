class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]


  # GET /recipes
  # GET /recipes.json
  def index
   # @recipes = Recipe.all
   @recipes = Recipe.search(params[:search])
  end

 # def search
#@recipes = Recipe.where([ 'name LIKE ?', "%#{params[:search]}%" ]) 
#end

  # GET /recipes/1
  # GET /recipes/1.json
  def show
      @recipes = Recipe.search(params[:search]) 
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_params
      params.require(:recipe).permit(:recipe_name, :recipe_id, :country_id, :recipe_content)
    end
end
