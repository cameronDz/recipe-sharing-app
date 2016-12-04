class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]

  # allows user to search for recipes
  def search
    
    # taken from rails lecture slide 9
    name = params[:search] + '%' unless params[:search].nil?
    
    @recipes = Recipe.where(['name LIKE ?', name])
    
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  # glossary of all recipes
  def glossary
    
    @recipes, @alphaParams = Recipe.all.alpha_paginate(params[:letter], {:bootstrap3 => true, :paginate_all => false, :pagination_class => "pagination-centered"}){|recipe| recipe.name}
    
    respond_to do |format|
      format.html
      format.js
    end
  end

  # GET /recipes
  # GET /recipes.json
  def index
    @recipes = Recipe.all
    @ingredients = Ingredient.all
  end

  # GET /recipes/1
  # GET /recipes/1.json
  def show
    @recipe = Recipe.find(params[:id])
  end

  # GET /recipes/new
  def new
    @recipe = Recipe.new
    #Trying to get user to work for new recipe
  end

  # GET /recipes/1/edit
  def edit
  end

  # POST /recipes
  # POST /recipes.json
  def create
    @recipe = Recipe.new(recipe_params.merge(:user => current_user))
    

    respond_to do |format|
      if @recipe.save
        format.html { redirect_to @recipe, notice: 'Recipe was successfully created.' }
        format.json { render :show, status: :created, location: @recipe }
      else
        format.html { render :new }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipes/1
  # PATCH/PUT /recipes/1.json
  def update
    respond_to do |format|
      if @recipe.update(recipe_params)
        format.html { redirect_to @recipe, notice: 'Recipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipe }
      else
        format.html { render :edit }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipes/1
  # DELETE /recipes/1.json
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

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_params
      params.require(:recipe).permit(:name, :instructions, ingredient_ids: [])
    end
end
