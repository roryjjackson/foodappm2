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
  end

  def create
    @menu = Menu.new(menu_params)

    if @menu.save
      # here i want to create a collection of tags that the user selects in the menu new file
      selected_tag_ids = menu_params[:tag_ids]
      tags = Tag.where(id: selected_tag_ids)


      # create an array of recipes that have the correct tags so that the menu can build an array of random recipes selected from this array
      recipes = Recipe.joins(:tags).where(tags: { id: selected_tag_ids }).distinct
      random_recipes = recipes.sample(3)
      @menu.recipes << random_recipes

      redirect_to @menu, notice: 'Menu was successfully created.'
    else
      render :new
    end
  end


  def edit
  end

  def update
    if @menu.update(menu_params)
      redirect_to @menu, notice: 'Menu was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @menu.tags.destroy_all
    @menu.destroy
    redirect_to menus_url, notice: 'Menu was successfully destroyed.'
  end

  private

  def set_menu
    @menu = Menu.find(params[:id])
  end

  def menu_params
    params.require(:menu).permit(:name, :description, tag_ids: [], recipe_ids: [])
  end
end
