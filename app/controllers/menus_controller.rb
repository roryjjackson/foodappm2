class MenusController < ApplicationController
  before_action :set_menu, only: [:show, :edit, :update, :destroy]

  def index
    @menus = Menu.all
  end

  def show
    @menu = Menu.find(params[:id])
    @recipes = @menu.recipes
    @categorized_recipes = add_recipes_by_meal_type(@menu)



    @menu_tags = []

    @menu.recipe_ids.each do |recipe_id|
      recipe = Recipe.where(id: recipe_id)
      @menu_tags << recipe.first.tag_ids
    end
  end

  def new
    @menu = Menu.new
  end

  def add_recipes_by_meal_type(menu)
    snacks = []
    breakfasts = []
    lunches = []
    dinners = []
    tagged_recipes = []

    Recipe.all.each do |recipe|
      tagged_recipes << recipe if (recipe.tags & menu.tags).any?
    end

    tagged_recipes.each do |recipe|
      if (recipe.meal_type & menu.meal_type).any?
        snacks << recipe if recipe.meal_type.include?("Snack") && menu.meal_type.include?("Snack")
        breakfasts << recipe if recipe.meal_type.include?("Breakfast") && menu.meal_type.include?("Breakfast")
        lunches << recipe if recipe.meal_type.include?("Lunch") && menu.meal_type.include?("Lunch")
        dinners << recipe if recipe.meal_type.include?("Dinner") && menu.meal_type.include?("Dinner")
      end
    end

    {
      snacks: snacks.sample(menu.days_planned),
      breakfasts: breakfasts.sample(menu.days_planned),
      lunches: lunches.sample(menu.days_planned),
      dinners: dinners.sample(menu.days_planned)
    }
  end

  def create
    @menu = Menu.new(menu_params)

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
