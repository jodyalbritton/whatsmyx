class NutritionController < ApplicationController
    before_filter :authenticate_user!
  def index
  
  @date = params[:date] ? Date.parse(params[:date]) : Date.today
  @user = User.find(current_user)
  
  if params[:date] 
  @meals = @user.meals.where :date => params[:date]
  else
  @meals = @user.meals.where :date => Date.today
  end 
  
   
  
  
  end
  
  def show
  
  end
end
