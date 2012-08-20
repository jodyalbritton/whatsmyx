class GoalsController < ApplicationController
  autocomplete :category, :name, :full => true, :limit => '100'
  before_filter :authenticate_user!
  # GET /goals
  # GET /goals.json
  
 

 

  def index
    @user = User.find(current_user)
    @goals = @user.goals
    @goal = current_user.goals.build(params[:goal])
  end

  # GET /goals/1
  # GET /goals/1.json
  def show
    @user = User.find(current_user)
    @goal = @user.goals.find(params[:id])

   
  end

  # GET /goals/new
  # GET /goals/new.json
  def new
  
    @goal = Goal.new

   
  end

  # GET /goals/1/edit
  def edit
    @user = User.find(current_user)
    @goal = @user.goals.find(params[:id])
  end

  # POST /goals
  # POST /goals.json
  def create
    @goal = current_user.goals.build(params[:goal])
    if @goal.save
    flash[:notice] = "Successfully created goal."
    
    @goals = current_user.goals.find(:all)
    
    end 
    
    
  end

  # PUT /goals/1
  # PUT /goals/1.json
  def update
     @user = User.find(current_user)
     @goal = @user.goals.find params[:id]

    respond_to do |format|
    if @goal.update_attributes(params[:goal])
      format.html { redirect_to(@goal, :notice => 'Goal was successfully updated.') }
      format.json { respond_with_bip(@goal) }
    else
      format.html { render :action => "edit" }
      format.json { respond_with_bip(@goal) }
    end
    end
    
  end

  # DELETE /goals/1
  # DELETE /goals/1.json
  def destroy
    @user = User.find(current_user)
    @goal = @user.goals.find(params[:id])
    @goal.destroy
    flash[:notice] = "Successfully updated goal."
    @goals = @user.goals
  
  end
end
