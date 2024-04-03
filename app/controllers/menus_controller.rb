class MenusController < ApplicationController
  before_action :set_menu, only: [:show, :edit, :update, :destroy]

  def index
    @menus = Menu.all
  end

  def day_by_day_plan(menu)
    @recipes = []

    case menu.meal_type
    when ["Breakfast", "Lunch", "Dinner"]
      menu.recipes.where(meal_type: ["Breakfast"]).zip(menu.recipes.where(meal_type: ["Lunch"]), menu.recipes.where(meal_type: ["Dinner"])) do |recipe1, recipe2, recipe3|
        @recipes << recipe1
        @recipes << recipe2
        @recipes << recipe3
      end
    when ["Breakfast", "Lunch"]
      menu.recipes.where(meal_type: ["Breakfast"]).zip(menu.recipes.where(meal_type: ["Lunch"])) do |recipe1, recipe2|
        @recipes << recipe1
        @recipes << recipe2
      end
    when ["Lunch", "Dinner"]
      menu.recipes.where(meal_type: ["Lunch"]).zip(menu.recipes.where(meal_type: ["Dinner"])) do |recipe1, recipe2|
        @recipes << recipe1
        @recipes << recipe2
      end
    when ["Breakfast", "Dinner"]
      menu.recipes.where(meal_type: ["Breakfast"]).zip(menu.recipes.where(meal_type: ["Dinner"])) do |recipe1, recipe2|
        @recipes << recipe1
        @recipes << recipe2
      end
    when ["Breakfast"]
      menu.recipes.where(meal_type: ["Breakfast"]).each do |recipe|
        @recipes << recipe
      end
    when ["Lunch"]
      menu.recipes.where(meal_type: ["Lunch"]).each do |recipe|
        @recipes << recipe
      end
    when ["Dinner"]
      menu.recipes.where(meal_type: ["Dinner"]).each do |recipe|
        @recipes << recipe
      end
    end
    @recipes
  end

  def show
    @menu = Menu.find(params[:id])
    @recipes = @menu.recipes
    day_by_day_plan(@menu)

    @ingredients = []

    @menu.recipes.ids.each do |recipe|
      ingredients = Recipe.where(id: recipe).first.ingredients

      ingredients.each do |ingredient|
        @ingredients << ingredient.name
      end
    end

    @menu_tags = []

    @menu.recipe_ids.each do |recipe_id|
      recipe = Recipe.where(id: recipe_id)
      @menu_tags << recipe.first.tag_ids
    end
  end

  def new
    @menu = Menu.new
    # @tags = Tag.all
    # @ingredients = Ingredient.all
  end

  def add_recipes_by_meal_type(menu)
    recipes = []

    menu.meal_type.each do |type|
      recipes << Recipe.all.where(meal_type: ["#{type}"]).sample(@menu.days_planned)
    end

    recipes
  end

  def add_tagged_recipes(menu)
    recipes = []

    menu.tag_ids.each do |tag|
      raise
      recipes << Recipe.where(tag_id: tag)
    end

    recipes
  end

  def create
    @menu = Menu.new(menu_params)

    tagged_recipes = add_tagged_recipes(@menu)

    relevant_recipes = add_recipes_by_meal_type(@menu)

    relevant_recipes.each do |recipe|
      @menu.recipes << recipe
    end

    if @menu.save
      redirect_to @menu, notice: 'Menu was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    @menu.recipes.destroy_all

    if @menu.update(menu_params)
      relevant_recipes = add_recipes_by_meal_type(@menu)
      @menu.recipes << relevant_recipes
      day_by_day_plan(@menu)
      redirect_to @menu, notice: 'Menu was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @menu.tags.destroy_all
    @menu.ingredients.destroy_all
    @menu.destroy
    redirect_to menus_url, notice: 'Menu was successfully destroyed.'
  end

  def compare_tags(array1, array2)
    array2.all? { |element| array1.include?(element) }
  end

  private

  def set_menu
    @menu = Menu.find(params[:id])
  end

  def menu_params
    params.require(:menu).permit(:name,
                                 :description,
                                 :days_planned,
                                 :photo,
                                 tag_ids: [],
                                 recipe_ids: [],
                                 ingredient_ids: [],
                                 meal_type: [])
  end
end
