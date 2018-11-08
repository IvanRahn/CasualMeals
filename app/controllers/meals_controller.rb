class MealsController < ApplicationController
  before_action :set_meal, only: [:show, :edit, :update, :destroy]
  #check that only chef who owns the meal can edit or delete
  before_action :check_chef, only: [:edit, :update, :destroy, :new, :create]

  # GET /meals
  # GET /meals.json

  def index
    #check if user entered location and redirect if they haven't
    if session[:location].nil?
      redirect_to new_location_path
    end
    #show only meals where chef is currently working
    @meals = Meal.with_working_chef
    # check the distance between chef and customer
    check_location unless session[:location].nil?
    #search if search params entered
    search
  end

  # chef's meals
  def my_meals
    @meals = current_user.chef.meals
  end

  # GET /meals/1
  # GET /meals/1.json
  def show
  end

  # GET /meals/new
  def new
    @meal = Meal.new
    # redirect chef if they haven't ticked comply with NSW FSA regulations
    if !current_user.chef.verification
      flash[:notice] = "Please make sure you comply"
      redirect_to edit_chef_path(current_user.chef.id)
    end
  end

  # GET /meals/1/edit
  def edit
  end

  # POST /meals
  # POST /meals.json
  def create
    @meal = Meal.new(meal_params)
    @meal.chef_id = current_user.chef.id
    respond_to do |format|
      if @meal.save
        format.html { redirect_to @meal, notice: "Meal was successfully created." }
        format.json { render :show, status: :created, location: @meal }
      else
        format.html { render :new }
        format.json { render json: @meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meals/1
  # PATCH/PUT /meals/1.json
  def update
    respond_to do |format|
      if @meal.update(meal_params)
        format.html { redirect_to @meal, notice: "Meal was successfully updated." }
        format.json { render :show, status: :ok, location: @meal }
      else
        format.html { render :edit }
        format.json { render json: @meal.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # search
  def search
    if !params[:search].nil?
      @meals = Meal.search_meal(params[:search])
    end
  end

  # check location using geocoder
  def check_location
    @location = Geocoder.search(session[:location])
    @location = @location.first.coordinates
    @meals = @meals.select do |meal|
      meal.chef.user.distance_to(@location) < meal.chef.delivery_range
    end
  end

  # redirect user depending on role and meal
  def check_chef
    if current_user.customer? or (!@meal.nil? and current_user.chef.id != @meal.chef_id)
      redirect_to meals_path
    end
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_meal
    @meal = Meal.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def meal_params
    params.require(:meal).permit(:name, :show_all, :cuisine, :description, :price, :delivery_time, :image, :user_id, :location)
  end
end
