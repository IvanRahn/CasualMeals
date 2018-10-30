class HomeController < ApplicationController
  before_action :check_signed_in

  def welcome
  end

  private
  def check_signed_in
    redirect_to meals_path if user_signed_in?
  end
end
