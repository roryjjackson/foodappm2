class MenusController < ApplicationController
  before_action :set_menu, only: [:show, :edit, :update, :destroy]

  def index
    @menus = Menu.all
  end

  def show
    @menu = Menu.find(params[:id])
    @recipes = @menu.recipes

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
