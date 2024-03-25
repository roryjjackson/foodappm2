class MenusController < ApplicationController
  before_action :set_menu, only: [:show, :edit, :update, :destroy]

  def index
    @menus = Menu.all
  end

  def show
    @tags = Menu.find(params[:id])
    @menu_tags = []

    @tags.recipe_ids.each do |recipe_id|
      recipe = Recipe.where(id: recipe_id)
      @menu_tags << recipe.first.tag_ids
    end
  end

  def new
    @menu = Menu.new
    @tags = Tag.all
    @ingredients = Ingredient.all
  end

  def compare_tags(array1, array2)
    array2.all? { |element| array1.include?(element) }
  end

  def create
    @menu = Menu.new(menu_params)

    if @menu.save
      selected_tag_ids = menu_params[:tag_ids].reject { |element| element.empty? }
      Recipe.all.each do |recipe|
        tags_array = []

        recipe.tags.each do |tag|
          tags_array << tag.id
        end
        @menu.recipes << recipe if compare_tags(tags_array.map(&:to_s), selected_tag_ids)
      end
      selected_ingredient_ids = menu_params[:ingredient_ids]

      excluded_recipes = Recipe.joins(:ingredients).where(ingredients: { id: selected_ingredient_ids }).distinct
      @menu.recipes -= excluded_recipes

      redirect_to @menu, notice: 'Menu was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @menu.save
      selected_tag_ids = menu_params[:tag_ids].reject { |element| element.empty? }
      Recipe.all.each do |recipe|
        tags_array = []

        recipe.tags.each do |tag|
          tags_array << tag.id
        end
        @menu.recipes << recipe if compare_tags(tags_array.map(&:to_s), selected_tag_ids)
      end
      selected_ingredient_ids = menu_params[:ingredient_ids]

      excluded_recipes = Recipe.joins(:ingredients).where(ingredients: { id: selected_ingredient_ids }).distinct
      @menu.recipes -= excluded_recipes

      redirect_to @menu, notice: 'Menu was successfully created.'
    else
      render :new
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
    params.require(:menu).permit(:name, :description, tag_ids: [], recipe_ids: [], ingredient_ids: [])
  end
end
