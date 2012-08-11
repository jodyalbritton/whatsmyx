class PactivitiesController < ApplicationController
    autocomplete :exercise, :name, :full => true, :limit => '100', :extra_data => [:category]
  # GET /pactivities
  # GET /pactivities.json
  def index
    @user = User.find(current_user)
    @pactivity = current_user.pactivities.build(params[:pactivity])
   
    @pactivities = Pactivity.where(:user_id => current_user).includes(:exercise).group_by { |p| p.date }
    
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
       @activities = Activity.order("updated_at DESC")
       @pactivities = @user.pactivities.group_by { |p| p.date }
   end
   
  end

  # PUT /pactivities/1
  # PUT /pactivities/1.json
  def update
    @user = User.find(current_user)
    @pactivity = Pactivity.find(params[:id])
    
    if @pactivity.update_attributes(params[:pactivity])
      @user = @pactivity.user
      flash[:notice] = "Successfully updated pactivity."
      @pactivities = @user.pactivities
    end
   
    
  end

  # DELETE /pactivities/1
  # DELETE /pactivities/1.json
  def destroy
    @pactivity = Pactivity.find(params[:id])
    @pactivity.destroy

   
  end
end
