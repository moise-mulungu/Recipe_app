# Service to download ftp files from the server
class RecipesController < ApplicationController
  before_action :set_recipe, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: %i[index show]
  before_action :correct_user, only: %i[edit update destroy]

  # GET /recipes or /recipes.json
  def index
    # @recipes = Recipe.all
    @recipes = if current_user.nil?
      []
    else
      @current_user.recipes
    end
  end

  # GET /recipes/1 or /recipes/1.json
  def show
    @recipe = Recipe.find(params[:id])
    @food_recipes = FoodRecipe.includes(:food).where(recipe_id: @recipe.id)
  end

  # GET /recipes/new
  def new
    # @recipe = Recipe.new
    @recipe = current_user.recipes.build
  end

  # GET /recipes/1/edit
  def edit; end

  def correct_user
    @recipe = current_user.recipes.find_by(id: params[:id])
    redirect_to recipes_path, notice: 'You are not authorized to perform that operation' if @recipe.nil?
  end

  # POST /recipes or /recipes.json
  def create
    user = current_user
    recipe = Recipe.new(params.require(:recipe).permit(:name, :description, :preparation_time, :cooking_time, :public))
    recipe.user = user
    respond_to do |format|
      format.html do
        if recipe.save
          flash[:success] = 'Recipe saved successfully'
          redirect_to recipes_url
        else
          flash[:error] = 'Error: recipe could not be saved'
          redirect_to new_recipe_url
        end
      end
    end


  end

  # PATCH/PUT /recipes/1 or /recipes/1.json
  def update
    respond_to do |format|
      if @recipe.update(recipe_params)
        format.html { redirect_to recipe_url(@recipe), notice: 'Recipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipe }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipes/1 or /recipes/1.json
  def destroy
    @recipe.destroy

    respond_to do |format|
      format.html { redirect_to recipes_url, notice: 'Recipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def recipe_params
    params.require(:recipe).permit(:name, :preparation_time, :cooking_time, :description, :user_id)
  end
end
