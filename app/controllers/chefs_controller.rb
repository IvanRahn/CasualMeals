class ChefsController < ApplicationController
  #authenticate that the user is a chef in order to allow access to CRUD actions and their specific dishes, all chefs can view each other's meals
  #customer should only have show access
  before_action :authenticate_user!
  before_action :set_chef, only: [:show, :edit, :update, :destroy]

  # GET /meals/1
  # GET /meals/1.json
  def show
  end

  # GET /meals/new
  def new
    @chef = Chef.new
    @chef.user_id = current_user.id
    @chef.type_of_user = "chef"
  end

  # GET /meals/1/edit
  def edit
  end

  # POST /meals
  # POST /meals.json
  def create
    @chef = Chef.new(meal_params)

    respond_to do |format|
      if @chef.save
        format.html { redirect_to @chef, notice: "Chef was successfully created." }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /meals/1
  # PATCH/PUT /meals/1.json
  def update
    respond_to do |format|
      if @chef.update(chef_params)
        format.html { redirect_to @chef, notice: "Chef was successfully updated." }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /meals/1
  # DELETE /meals/1.json
  def destroy
    @chef.destroy
    respond_to do |format|
      format.html { redirect_to chefs_url, notice: "Chef was successfully destroyed." }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_chef
    @chef = Chef.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def chef_params
    params.require(:meal).permit(:cuisine, :description, :price, :delivery_time, :image, :user_id)
  end
end
