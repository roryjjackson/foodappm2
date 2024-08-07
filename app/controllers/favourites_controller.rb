class FavouritesController < ApplicationController
  before_action :set_favourite, only: %i[ show edit update destroy ]

  def add_to_favourites
    recipe = Recipe.find(params[:recipe_id])
    favourite = Favourite.find_or_create_by(user: current_user)

    unless favourite.recipes.include?(recipe)
      favourite.recipes << recipe
      flash[:notice] = 'Recipe added to your favourites!'
    else
      flash[:alert] = 'Recipe is already in your favourites!'
    end

    redirect_back(fallback_location: root_path)
  end

  def remove_from_favourites
    recipe = Recipe.find(params[:recipe_id])
    favourite = Favourite.find_by(user: current_user)

    if favourite && favourite.recipes.delete(recipe)
      flash[:notice] = 'Recipe removed from your favourites!'
    else
      flash[:alert] = 'Recipe could not be removed from favourites!'
    end

    redirect_back(fallback_location: root_path)
  end

  # GET /favourites or /favourites.json
  def index
    @favourites = Favourite.all
  end

  # GET /favourites/1 or /favourites/1.json
  def show
  end

  # GET /favourites/new
  def new
    @favourite = Favourite.new
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
    @favourite.destroy

    respond_to do |format|
      format.html { redirect_to favourites_url, notice: "Favourite was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favourite
      @favourite = Favourite.find_by(user_id: current_user.id)
    end

    # Only allow a list of trusted parameters through.
    def favourite_params
      params.require(:favourite).permit(:user_id)
    end
end
