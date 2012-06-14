class NutritionController < ApplicationController
    before_filter :authenticate_user!
  def index
   @ingredient = current_user.ingredients.build 
  @date = params[:date] ? Date.parse(params[:date]) : Date.today
  @user = User.find(current_user)
  
  if params[:date] 
  @ingredients = @user.ingredients.where(:date => params[:date]).order("mcategory_id ASC").group_by { |m| m.mcategory}
  @ingredients_tot = @user.ingredients.where(:date => params[:date])
 
  else
  @ingredients = @user.ingredients.where(:date => Date.today).order("mcategory_id ASC").group_by { |m| m.mcategory}
  @ingredients_tot = @user.ingredients.where(:date => Date.today)
  end
  end 
  def show
  
  end
end
