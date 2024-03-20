class MenusController < ApplicationController
  before_action :set_menu, only: [:show, :edit, :update, :destroy]

  def index
    @menus = Menu.all
  end

  def show
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
      ingredients = Ingredient.joins(:menu_ingredients).where(menu_ingredients: { menu_id: @menu.id, ingredient_id: selected_ingredient_ids }).distinct
      @menu.ingredients << ingredients
      redirect_to @menu, notice: 'Menu was successfully created.'
    else
      render :new
    end
  end


  def edit
  end

  def update
    if @menu.update(menu_params)
      # Update the associated tags
      selected_tag_ids = menu_params[:tag_ids]
      @menu.tags = Tag.where(id: selected_tag_ids)

      # Update the associated recipes based on the selected tags in menu_params
      selected_tag_ids = menu_params[:tag_ids]
      recipes = Recipe.joins(:tags).where(tags: { id: selected_tag_ids }).distinct
      random_recipes = recipes.sample(3)
      @menu.recipes = random_recipes
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
    params.require(:menu).permit(:name, :description, tag_ids: [], recipe_ids: [], ingredient_ids: [])
  end
end
