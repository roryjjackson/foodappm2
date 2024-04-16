class MenusController < ApplicationController
  before_action :set_menu, only: [:show, :edit, :update, :destroy]

  def index
    @menus = Menu.all
  end

  def show
    @menu = Menu.find(params[:id])

    @recipes = @menu.recipes.each_slice(@menu.days_planned).to_a.transpose.flatten

    @menu_tags = []

    @menu.recipe_ids.each do |recipe_id|
      recipe = Recipe.where(id: recipe_id)
      @menu_tags << recipe.first.tag_ids
    end
  end

  def new
    @menu = Menu.new
  end

  def add_recipes(menu)
    snack = []
    breakfast = []
    lunch = []
    dinner = []
    tagged_recipes = []

    if menu.tags.exists?
      Recipe.all.each do |recipe|
        tagged_recipes << recipe if (recipe.tags & menu.tags).any?
      end
    else
      Recipe.all.each do |recipe|
        tagged_recipes << recipe
      end
    end

    tagged_recipes.each do |recipe|
      if (recipe.meal_type & menu.meal_type).any?
        snack << recipe if recipe.meal_type.include?("Snack") && menu.meal_type.include?("Snack")
        breakfast << recipe if recipe.meal_type.include?("Breakfast") && menu.meal_type.include?("Breakfast")
        lunch << recipe if recipe.meal_type.include?("Lunch") && menu.meal_type.include?("Lunch")
        dinner << recipe if recipe.meal_type.include?("Dinner") && menu.meal_type.include?("Dinner")
      end
    end

    {
      snack: snack.sample(menu.days_planned),
      breakfast: breakfast.sample(menu.days_planned),
      lunch: lunch.sample(menu.days_planned),
      dinner: dinner.sample(menu.days_planned)
    }
  end

  # def add_recipes_to_menu(recipe_hash)
  #   @menu.recipes.destroy_all

  #   @menu.meal_type.each do |type|
  #     recipe_hash[type.to_sym.downcase].each do |recipe|
  #       @menu.recipes << recipe
  #     end
  #   end
  # end

  # def add_recipes_to_menu(recipe_hash)
  #   @menu.meal_type.each do |type|

  #   end
  # end

  def create
    @menu = Menu.new(menu_params)
    @categorized_recipes = add_recipes(@menu)
    add_recipes_to_menu(@categorized_recipes)

    if @menu.save
      redirect_to @menu, notice: 'Menu was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @menu.update(menu_params)
      @categorized_recipes = add_recipes(@menu)
      add_recipes_to_menu(@categorized_recipes)
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

  private

  def set_menu
    @menu = Menu.find(params[:id])
  end

  def menu_params
    params.require(:menu).permit(:name,
                                 :description,
                                 :days_planned,
                                #  :photo,
                                 tag_ids: [],
                                 recipe_ids: [],
                                 ingredient_ids: [],
                                 meal_type: [])
  end
end
