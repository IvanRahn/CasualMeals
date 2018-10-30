class HomeController < ApplicationController
  before_action :check_signed_in

  def welcome
  end

  private

  def check_signed_in
    if user_signed_in? and current_user.type_of_user == "customer"
      redirect_to meals_path
    elsif user_signed_in? and current_user.type_of_user == "chef" and !current_user.chef
        redirect_to new_chef_path
   elsif user_signed_in? and current_user.type_of_user == "chef" and current_user.chef
         redirect_to meals_path
    end
  end
end
