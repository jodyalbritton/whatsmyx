class MealsController < ApplicationController
 before_filter :authenticate_user!, :load
 
  # GET /meals
  # GET /meals.json
  
  def load
    @user = User.find(current_user)
    @meals = @user.meals.order("created_at DESC")
    
  end
  
  def index
    
    
  end

  # GET /meals/1
  # GET /meals/1.json
  def show
    @meal = Meal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @meal }
    end
  end

  # GET /meals/new
  # GET /meals/new.json
  def new
    
    @meal = Meal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @meal }
    end
  end

  # GET /meals/1/edit
  def edit
    @user = User.find(current_user)
    @meal = @user.meals.find(params[:id])
  end

  # POST /meals
  # POST /meals.json
  def create
  
     @meal = current_user.meals.build(params[:meal])
     
     if @meal.save 
     @user = User.find(current_user)
     
     if @meal.date == Date.today
     
      @meals = @user.meals.where(:date => Date.today).order("created_at ASC")
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
     @meals = @user.meals.where(:date => @meal.date).order("created_at ASC")
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
      
  
  
  
  end

  # PUT /meals/1
  # PUT /meals/1.json
  def update
    @user = User.find(current_user)
    @meal = @user.meals.find(params[:id])

    respond_to do |format|
      if @meal.update_attributes(params[:meal])
        format.html { redirect_to nutrition_index_path, notice: 'Meal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meals/1
  # DELETE /meals/1.json
  def destroy
    @user = User.find(current_user)
    @meal = @user.meals.find(params[:id])
    @meal.destroy

    respond_to do |format|
      format.html { redirect_to nutrition_index_path }
      format.json { head :no_content }
    end
  end
end
