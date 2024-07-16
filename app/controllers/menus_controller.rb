class MenusController < ApplicationController
  before_action :set_menu, only: [:show, :edit, :update, :destroy]

  def index
    @menus = Menu.all
  end

  def show
    @menu = Menu.find(params[:id])

    # @recipes = @menu.recipes
  end

  def new
    @menu = Menu.new
  end

  def add_recipes_to_menu(menu)
    breakfast = []
    lunch = []
    dinner = []

    # Populate arrays with recipes based on meal type
    Recipe.all.each do |recipe|
      breakfast << recipe if recipe.meal_type.include?("Breakfast")
      lunch << recipe if recipe.meal_type.include?("Lunch")
      dinner << recipe if recipe.meal_type.include?("Dinner")
    end

    # Create a sequence array for the desired order
    sequence = ["Breakfast", "Lunch", "Dinner"]

    # Loop through the sequence for each day planned
    menu.days_planned.times do
      sequence.each do |meal_type|
        case meal_type
        when "Breakfast"
          if breakfast.present?
            breakfast_sample = breakfast.sample
            menu.recipes << breakfast_sample
            breakfast.delete(breakfast_sample)
          end
        when "Lunch"
          if lunch.present?
            lunch_sample = lunch.sample
            menu.recipes << lunch_sample
            lunch.delete(lunch_sample)
          end
        when "Dinner"
          if dinner.present?
            dinner_sample = dinner.sample
            menu.recipes << dinner_sample
            dinner.delete(dinner_sample)
          end
        end
      end
    end
    raise
  end






  def create
    @menu = Menu.new(menu_params)

    respond_to do |format|
      if @menu.save
        add_recipes_to_menu(@menu)
        format.html { redirect_to menu_url(@menu), notice: "Menu was successfully created." }
        format.json { render :show, status: :created, location: @menu }
        # redirect_to @menu, notice: 'Menu was successfully created.'
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    if @menu.update(menu_params)
      @menu.recipes.destroy_all
      add_recipes_to_menu(@menu)
      redirect_to @menu, notice: 'Menu was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    # @menu.tags.destroy_all
    # @menu.ingredients.destroy_all
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
                                 recipe_ids: [],
                                 ingredient_ids: []
                                #  :photo,
                                #  tag_ids: [],
                                #  meal_type: []
                                )
  end
end
