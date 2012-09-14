class MentalActivitiesController < ApplicationController
    autocomplete :mental_activity_type, :name, :full => true, :limit => '100', :extra_data => [:category]
  # GET /mental_activities
  # GET /mental_activities.json
  def index
    @user = User.find(current_user)
    @mental_activity = @user.mental_activities.build(params[:mental_activity])
    @scopes = current_user.circles.map { |r| [r.name, r.id] }
    @scopes.push(["Public", "0"])
    @mental_activities = @user.mental_activities.includes(:mental_activity_type).group_by { |p| p.date }
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mental_activities }
    end
  end

  # GET /mental_activities/1
  # GET /mental_activities/1.json
  def show
    @mental_activity = MentalActivity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mental_activity }
    end
  end

  # GET /mental_activities/new
  # GET /mental_activities/new.json
  def new
    @mental_activity = MentalActivity.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mental_activity }
    end
  end

  # GET /mental_activities/1/edit
  def edit
    @mental_activity = MentalActivity.find(params[:id])
  end

  # POST /mental_activities
  # POST /mental_activities.json
  def create
    @user = User.find(current_user)
    @mental_activity = @user.mental_activities.build(params[:mental_activity])

   if @mental_activity.save
     flash[:notice] = "Successfully created activity."
     following = Follow.where(["follower_id = ?", (current_user)])
     following_ids = following.collect{|f| f.followable_id}
     mycircles =  current_user.relationships.collect{|g| g.circle_id}
     mycircles.push(0)
     aoi = Activity.where(:target_type => ["Post", "Stat", "MentalActivity", "Meal"], :scope => mycircles )
     @activities = aoi.where(:user_id => [following_ids, current_user] ).page params[:page]
     @mental_activities = @user.mental_activities.includes(:mental_activity_type).group_by { |p| p.date }
     flash.discard
   end
   
  end

  # PUT /mental_activities/1
  # PUT /mental_activities/1.json
  def update
   @user = User.find(current_user)
   @mental_activity = @user.mental_activities.find params[:id]

    respond_to do |format|
    if @mental_activity.update_attributes(params[:mental_activity])
      format.html { redirect_to(@mental_activity, :notice => 'Activity was successfully updated.') }
      format.json { respond_with_bip(@mental_activity) }
    else
      format.html { render :action => "edit" }
      format.json { respond_with_bip(@mental_activity) }
    end
  end
    
  end

  # DELETE /mental_activities/1
  # DELETE /mental_activities/1.json
  def destroy
    @mental_activity = MentalActivity.find(params[:id])
    @mental_activity.destroy

   
  end
end
