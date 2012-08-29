class PactivitiesController < ApplicationController
    autocomplete :exercise, :name, :full => true, :limit => '100', :extra_data => [:category]
  # GET /pactivities
  # GET /pactivities.json
  def index
    @user = User.find(current_user)
    @pactivity = @user.pactivities.build(params[:pactivity])
    @scopes = current_user.circles.map { |r| [r.name, r.id] }
    @scopes.push(["Public", "0"])
    @pactivities = @user.pactivities.includes(:exercise).group_by { |p| p.date }
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pactivities }
    end
  end

  # GET /pactivities/1
  # GET /pactivities/1.json
  def show
    @pactivity = Pactivity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pactivity }
    end
  end

  # GET /pactivities/new
  # GET /pactivities/new.json
  def new
    @pactivity = Pactivity.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pactivity }
    end
  end

  # GET /pactivities/1/edit
  def edit
    @pactivity = Pactivity.find(params[:id])
  end

  # POST /pactivities
  # POST /pactivities.json
  def create
    @user = User.find(current_user)
    @pactivity = @user.pactivities.build(params[:pactivity])

   if @pactivity.save
     flash[:notice] = "Successfully created activity."
     following = Follow.where(["follower_id = ?", (current_user)])
     following_ids = following.collect{|f| f.followable_id}
     mycircles =  current_user.relationships.collect{|g| g.circle_id}
     mycircles.push(0)
     aoi = Activity.where(:target_type => ["Post", "Stat", "Pactivity", "Meal"], :scope => mycircles )
     @activities = aoi.where(:user_id => [following_ids, current_user] ).page params[:page]
     @pactivities = @user.pactivities.includes(:exercise).group_by { |p| p.date }
     flash.discard
   end
   
  end

  # PUT /pactivities/1
  # PUT /pactivities/1.json
  def update
   @user = User.find(current_user)
   @pactivity = @user.pactivities.find params[:id]

    respond_to do |format|
    if @pactivity.update_attributes(params[:pactivity])
      format.html { redirect_to(@pactivity, :notice => 'User was successfully updated.') }
      format.json { respond_with_bip(@pactivity) }
    else
      format.html { render :action => "edit" }
      format.json { respond_with_bip(@pactivity) }
    end
  end
    
  end

  # DELETE /pactivities/1
  # DELETE /pactivities/1.json
  def destroy
    @pactivity = Pactivity.find(params[:id])
    @pactivity.destroy

   
  end
end
