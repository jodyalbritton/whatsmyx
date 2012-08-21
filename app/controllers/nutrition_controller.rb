  class NutritionController < ApplicationController
    before_filter :authenticate_user!
  def index
  @meal = current_user.meals.build 
  @scopes = current_user.circles.map { |r| [r.name, r.id] }
     @scopes.push(["Public", "0"])
  @user = User.find(current_user)
  
  
  if params["date(1i)"]
  @somedate = DateTime.new(params["date(1i)"].to_i, 
                           params["date(2i)"].to_i,
                           params["date(3i)"].to_i)
    
  elsif params[:date]
  @somedate = Date.parse(params[:date]) 
  else 
  @somedate = Date.today
  end 
 
  
    

  
  @meals = @user.meals.where(:date => @somedate).order("created_at ASC")
  @meals_tot = @user.meals.where(:date => @somedate)
  @daily_activities = @user.pactivities.where(:date => @somedate)
   
    
      if  @user.profile == nil
        @daily_burn = 0
      elsif
      @daily_burn = (@daily_activities.sum { |daily| daily.burned }) + @user.profile.mbr
      end 
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
  def show
  
  end
end
