class RecipesController < ApplicationController
  before_action :set_recipe, only: %i[ show edit update destroy ]

  # GET /recipes or /recipes.json
  def index
    @recipes = Recipe.all

    if params[:tag_id].present?
      @recipes = @recipes.joins(:tags).where(tags: { id: params[:tag_id] })
    end

    query = params[:query]
    if query.present?
      @recipes = Recipe.search_by_recipe(query)
    else
      @recipes = Recipe.all
    end
  end

  def ingredients
    @ingredients = Ingredient.where("name LIKE ?", "%#{params[:search]}%")
    respond_to do |format|
      format.js
    end
  end

  # GET /recipes/1 or /recipes/1.json
  def show
  end

  # GET /recipes/new
  def new
    @recipe = Recipe.new
    @ingredients = Ingredient.all
  end

  # GET /recipes/1/edit
  def edit
  end

  # POST /recipes or /recipes.json
  def create
    @recipe = Recipe.new(recipe_params)
    @ingredients = Ingredient.search_by_ingredient(params[:search])

    @recipe.user = current_user

    respond_to do |format|
      if @recipe.save
        # selected_ingredient_ids = recipe_params[:ingredient_ids]

        # # ingredients = Ingredient.joins(:recipe_ingredients).where(recipe_ingredients: { id: selected_ingredient_ids }).distinct
        # ingredients = Ingredient.joins(:recipe_ingredients).where(recipe_ingredients: { recipe_id: @recipe.id, ingredient_id: selected_ingredient_ids }).distinct


        # @recipe.ingredients << ingredients

        format.html { redirect_to recipe_url(@recipe), notice: "Recipe was successfully created." }
        format.json { render :show, status: :created, location: @recipe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipes/1 or /recipes/1.json
  def update
    respond_to do |format|
      if @recipe.update(recipe_params)
        format.html { redirect_to recipe_url(@recipe), notice: "Recipe was successfully updated." }
        format.json { render :show, status: :ok, location: @recipe }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipes/1 or /recipes/1.json
  def destroy
    @recipe.ingredients.destroy_all
    @recipe.destroy

    respond_to do |format|
      format.html { redirect_to recipes_url, notice: "Recipe was successfully destroyed." }
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
      params.require(:recipe).permit(:name,
                                     :description,
                                     :instructions,
                                     :prep_time,
                                     :cook_time,
                                     :photo,
                                     :user_id,
                                     tag_ids: [],
                                     ingredient_ids: [],
                                     meal_type: [])
    end
end
