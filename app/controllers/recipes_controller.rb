class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]
before_action :authenticate_user! ,  only: [:upvote, :downvote]
def upvote
  @recipe = Recipe.find(params[:id])
  @recipe.upvote_by current_user
  redirect_to recipe_path
end
helper_method :upvote
def downvote
  @recipe = Recipe.find(params[:id])
  @recipe.downvote_by current_user
  redirect_to recipe_path
end
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
  def edit
  end
  def update
    if @recipe.update(recipe_params)
      redirect_to @recipe
    else
      render 'edit'
    end
  end

  
  def show 
      @recipes = Recipe.search(params[:search]) 
      @comments = @recipe.comments.all
@comment = @recipe.comments.build
  end

def get_comments

         @commentr= Comment.where( :recipe_id  => params[:id] )
  end

helper_method :get_comments
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
