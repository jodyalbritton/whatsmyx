class PhysicalActivitiesController < ApplicationController
    autocomplete :physical_activity_type, :name, :full => true, :limit => '100', :extra_data => [:category]
  # GET /physical_activities
  # GET /physical_activities.json
  def index
    @user = User.find(current_user)
    @physical_activity = @user.physical_activities.build(params[:physical_activity])
    @scopes = current_user.circles.map { |r| [r.name, r.id] }
    @scopes.push(["Public", "0"])
    @physical_activities = @user.physical_activities.includes(:physical_activity_type).group_by { |p| p.date }
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @physical_activities }
    end
  end

  # GET /physical_activities/1
  # GET /physical_activities/1.json
  def show
    @physical_activity = PhysicalActivity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @physical_activity }
    end
  end

  # GET /physical_activities/new
  # GET /physical_activities/new.json
  def new
    @physical_activity = PhysicalActivity.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @physical_activity }
    end
  end

  # GET /physical_activities/1/edit
  def edit
    @physical_activity = PhysicalActivity.find(params[:id])
  end

  # POST /physical_activities
  # POST /physical_activities.json
  def create
    @user = User.find(current_user)
    @physical_activity = @user.physical_activities.build(params[:physical_activity])

   if @physical_activity.save
     flash[:notice] = "Successfully created activity."
     following = Follow.where(["follower_id = ?", (current_user)])
     following_ids = following.collect{|f| f.followable_id}
     mycircles =  current_user.relationships.collect{|g| g.circle_id}
     mycircles.push(0)
     aoi = Activity.where(:target_type => ["Post", "Stat", "PhysicalActivity", "Meal"], :scope => mycircles )
     @activities = aoi.where(:user_id => [following_ids, current_user] ).page params[:page]
     @physical_activities = @user.physical_activities.includes(:physical_activity_type).group_by { |p| p.date }
     flash.discard
   end
   
  end

  # PUT /physical_activities/1
  # PUT /physical_activities/1.json
  def update
   @user = User.find(current_user)
   @physical_activity = @user.physical_activities.find params[:id]

    respond_to do |format|
    if @physical_activity.update_attributes(params[:physical_activity])
      format.html { redirect_to(@physical_activity, :notice => 'User was successfully updated.') }
      format.json { respond_with_bip(@physical_activity) }
    else
      format.html { render :action => "edit" }
      format.json { respond_with_bip(@physical_activity) }
    end
  end
    
  end

  # DELETE /physical_activities/1
  # DELETE /physical_activities/1.json
  def destroy
    @physical_activity = PhysicalActivity.find(params[:id])
    @physical_activity.destroy

   
  end
end
