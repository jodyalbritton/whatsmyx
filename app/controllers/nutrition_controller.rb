  class NutritionController < ApplicationController
    before_filter :authenticate_user!
  def index
  @meal = current_user.meals.build 
  @date = params[:date] ? Date.parse(params[:date]) : Date.today
  @user = User.find(current_user)
  
  
 
 
  
    
  if params[:date] 
  @meals = @user.meals.where(:date => params[:date]).order("created_at ASC")
  @meals_tot = @user.meals.where(:date => params[:date])
  @daily_activities = @user.pactivities.where(:date => params[:date])
  @daily_burn = (@daily_activities.sum { |daily| daily.burned }) + @user.profile.mbr
  
  @tot_cals = @meals.sum { |meal| meal.cals }
  @tot_fats = @meals.sum { |meal| meal.fats }
  @tot_prot = @meals.sum { |meal| meal.prot }
  @tot_carb = @meals.sum { |meal| meal.carb }
  @tot_sugs = @meals.sum { |meal| meal.sugs }
  @tot_pots = @meals.sum { |meal| meal.pots }
  @tot_chol = @meals.sum { |meal| meal.chol }
  @tot_sodi = @meals.sum { |meal| meal.sodi }
  @tot_fibr = @meals.sum { |meal| meal.fibr }
  @tot_satf = @meals.sum { |meal| meal.satf }
 
  else
  @meals = @user.meals.where(:date => Date.today).order("created_at ASC")
  @meals_tot = @user.meals.where(:date => Date.today)
  @daily_activities = @user.pactivities.where(:date => Date.today)
  @daily_burn = (@daily_activities.sum { |daily| daily.burned }) + @user.profile.mbr
  
  @tot_cals = @meals.sum { |meal| meal.cals }
  @tot_fats = @meals.sum { |meal| meal.fats }
  @tot_prot = @meals.sum { |meal| meal.prot }
  @tot_carb = @meals.sum { |meal| meal.carb }
  @tot_sugs = @meals.sum { |meal| meal.sugs }
  @tot_pots = @meals.sum { |meal| meal.pots }
  @tot_chol = @meals.sum { |meal| meal.chol }
  @tot_sodi = @meals.sum { |meal| meal.sodi }
  @tot_fibr = @meals.sum { |meal| meal.fibr }
  @tot_satf = @meals.sum { |meal| meal.satf }
  end
  
 
  end 
  def show
  
  end
end
