class ChefsController < ApplicationController
  #authenticate that the user is a chef in order to allow access to CRUD actions and their specific dishes, all chefs can view each other's chefs
  #customer should only have show access
  # before_action :authenticate_user!
  before_action :set_chef, only: [:show, :edit, :update, :destroy]

  # GET /chefs/1
  # GET /chefs/1.json
  def index
    @chefs = Chef.all
  end

  def show
  end

  # GET /chefs/new
  def new
    @chef = Chef.new
  end

  # GET /chefs/1/edit
  def edit
  end

  # POST /chefs
  # POST /chefs.json
  def create
    @chef = Chef.new(chef_params)
    @chef.user_id = current_user.id

    respond_to do |format|
      if @chef.save
        format.html { redirect_to meals_path, notice: "Chef was successfully created." }
        format.json { render :show, status: :created, location: @chef }
      else
        format.html { render :new }
        format.json { render json: @chef.errors, status: :unprocessable_entity }
      end
    end
  end

  def working
    current_user.chef.toggle(:currently_working).save
    redirect_to "/meals"
  end

  # PATCH/PUT /chefs/1
  # PATCH/PUT /chefs/1.json
  def update
    respond_to do |format|
      if @chef.update(chef_params)
        format.html { redirect_to @chef, notice: "Chef was successfully updated." }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /chefs/1
  # DELETE /chefs/1.json
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
    params.require(:chef).permit(:delivery_range, :verification, :user_id, :currently_working)
  end
end
