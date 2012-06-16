class IngredientsController < ApplicationController
  before_filter :authenticate_user!
  # GET /ingredients
  # GET /ingredients.json
  def index
    @user = User.find(current_user)
    @ingredients = @user.ingredients.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ingredients }
    end
  end

 
    def show
    @ingredient = Ingredient.find(params[:id])
    @this_ingredient = Ingredient.find(params[:id])  
      
   
        
    @foods = Food.all
    @cals_tot = {:fat => 9, :protein => 4, :carbohydrates => 4}
    @dvs = {:total_fat => 65, :fa_sat => 20, :cholesterol => 300, :sodium => 2400, :potassium => 3500,
            :tot_carbs => 300, :fiber => 25, :protein => 50, :vit_c => 60, :calcium => 1000, :iron => 18, 
            :sugar_total => 40, :calories => 2000, :f_and_vs => 5}   
            
    # @todays_ingredients = Ingredient.search(@ingredient.date, @ingredient.user).order("time_of_day")
    
         @cals = 0 
  	 @prot = 0 
  	 @fats = 0 
  	 @carb = 0 
  	
     # for individual_ingredient in @todays_ingredients do 
  		
  			 
  			 food = Food.find(@ingredient.food_id) 
  			 if food.umd == 0
    			 if @ingredient.serving_size.nil? 
    				 multiplication_factor = @ingredient.servings
    			 else 
    				 multiplication_factor = @ingredient.servings*ingredient.serving_size/100
    			 end
    	
    		   multiplication_factor = @ingredient.servings
  			 end
  			 @cals = @cals + (food.calories*multiplication_factor) 
  			 @prot = @prot + (food.protein*multiplication_factor) 
  			 @fats = @fats + (food.lipid_total*multiplication_factor) 
  			 @carb = @carb + (food.carbohydrates*multiplication_factor) 
  	
     # end  
            
      @chart_data = "#{'%1.2f' % (100*@cals/@dvs[:calories])}, #{'%1.2f' % (100*@prot/@dvs[:protein])}, #{'%1.2f' % (100*@fats/@dvs[:total_fat])}, #{'%1.2f' % (100*@carb/@dvs[:tot_carbs])}"
            
    if @ingredient.user != current_user
      redirect_to user_path(current_user), :notice => "Access denied"
    end         
  end

  # GET /ingredients/new
  # GET /ingredients/new.json
  def new
    @ingredient = Ingredient.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ingredient }
    end
  end

  # GET /ingredients/1/edit
  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  # POST /ingredients
  # POST /ingredients.json
  def create
    @ingredient = current_user.ingredients.build(params[:ingredient])
    flash[:notice] = "Successfully created post."
  
  
    if @ingredient.save
      flash[:notice] = "Successfully created ingredient."
       @activities = Activity.order("updated_at DESC")
    end
  end

  # PUT /ingredients/1
  # PUT /ingredients/1.json
  def update
    @ingredient = Ingredient.find(params[:id])

    respond_to do |format|
      if @ingredient.update_attributes(params[:ingredient])
        format.html { redirect_to @ingredient, notice: 'Ingredient was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingredients/1
  # DELETE /ingredients/1.json
  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy

    respond_to do |format|
      format.html { redirect_to ingredients_url }
      format.json { head :no_content }
    end
  end
end
