class FavouritesController < ApplicationController
  before_action :set_favourite, only: %i[ show edit update destroy ]

  # GET /favourites or /favourites.json
  def index
    @favourites = Favourite.all
  end

  # GET /favourites/1 or /favourites/1.json
  def show
  end

  # GET /favourites/new
  def new
    if (existing_favourite = Favourite.find_by(user_id: current_user.id))
      redirect_to edit_favourite_path(existing_favourite), notice: "You already have a favourites, you cannot create another"
    else
      @favourite = Favourite.new
      @recipes = Recipe.all
    end
  end

  # GET /favourites/1/edit
  def edit
  end

  # POST /favourites or /favourites.json
  def create
    @favourite = Favourite.new(favourite_params)

    @favourite.user_id = current_user.id

    respond_to do |format|
      if @favourite.save

        favourite_recipe_ids = favourite_params[:recipe_ids]

        recipes = Recipe.joins(:favourite_recipes).where(favourite_recipes: { favourite_id: @favourite.id, recipe_id: favourite_recipe_ids })

        @favourite.recipes << recipes

        format.html { redirect_to favourite_url(@favourite), notice: "Favourite was successfully created." }
        format.json { render :show, status: :created, location: @favourite }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @favourite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /favourites/1 or /favourites/1.json
  def update
    respond_to do |format|
      if @favourite.update(favourite_params)
        format.html { redirect_to favourite_url(@favourite), notice: "Favourite was successfully updated." }
        format.json { render :show, status: :ok, location: @favourite }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @favourite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favourites/1 or /favourites/1.json
  def destroy
    @favourite.recipes.destroy_all
    @favourite.destroy

    respond_to do |format|
      format.html { redirect_to favourites_url, notice: "Favourite was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favourite
      @favourite = Favourite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def favourite_params
      params.require(:favourite).permit(:user_id, recipe_ids: [])
    end
end
