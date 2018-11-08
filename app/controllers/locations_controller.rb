class LocationsController < ApplicationController
  # save location in session
  def new
    session[:location] = params[:location]
    if !session[:location].nil?
      redirect_to meals_path
    end
  end
end
