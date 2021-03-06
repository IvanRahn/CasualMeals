class HomeController < ApplicationController
  before_action :check_signed_in

  def welcome
  end

  private

  # redirect users depending on whether the are customers or chefs and if they created a chef already
  def check_signed_in
    if user_signed_in? and current_user.chef? and !current_user.chef
      redirect_to new_chef_path
    elsif user_signed_in? and current_user.chef?
      redirect_to my_meals_path
    elsif user_signed_in?
      redirect_to meals_path
    end
  end
end
