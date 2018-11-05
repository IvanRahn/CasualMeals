class MealsController < ApplicationController
  before_action :set_meal, only: [:show, :edit, :update, :destroy]
  #check that only chef who owns the meal can edit or delete
  before_action :check_chef, only: [:edit, :update, :destroy, :new, :create]
  # GET /meals
  # GET /meals.json
  
  def index
    @meals =
      if current_user.customer? or params[:show_all]
        Meal.includes(:chef).where(chef_id: Chef.where(currently_working: true))
      elsif current_user.chef?
        current_user.chef.meals
      end
    search
  end

  def search
    if !params[:search].nil?
      @meals = Meal.includes(:chef)
                    .where(chef_id: Chef.where(currently_working: true))
                    .fuzzy_search(name: "#{params[:search]}")
    end
  end

  def show_all
    @meals = Meal.includes(:chef)
    render "index"
  end

  # GET /meals/1
  # GET /meals/1.json
  def show
  end

  # GET /meals/new
  def new
    @meal = Meal.new
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

  # DELETE /meals/1
  # DELETE /meals/1.json
  def destroy
    @meal.destroy
    respond_to do |format|
      format.html { redirect_to meals_url, notice: "Meal was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

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
    params.require(:meal).permit(:name, :show_all, :cuisine, :description, :price, :delivery_time, :image, :user_id)
  end
end
