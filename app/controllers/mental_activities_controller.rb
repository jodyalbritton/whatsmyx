class MentalActivitiesController < ApplicationController
  # GET /mental_activities
  # GET /mental_activities.json
  def index
    @mental_activities = MentalActivity.all

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
    @mental_activity = MentalActivity.new(params[:mental_activity])

    respond_to do |format|
      if @mental_activity.save
        format.html { redirect_to @mental_activity, notice: 'Mental activity was successfully created.' }
        format.json { render json: @mental_activity, status: :created, location: @mental_activity }
      else
        format.html { render action: "new" }
        format.json { render json: @mental_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mental_activities/1
  # PUT /mental_activities/1.json
  def update
    @mental_activity = MentalActivity.find(params[:id])

    respond_to do |format|
      if @mental_activity.update_attributes(params[:mental_activity])
        format.html { redirect_to @mental_activity, notice: 'Mental activity was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mental_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mental_activities/1
  # DELETE /mental_activities/1.json
  def destroy
    @mental_activity = MentalActivity.find(params[:id])
    @mental_activity.destroy

    respond_to do |format|
      format.html { redirect_to mental_activities_url }
      format.json { head :no_content }
    end
  end
end
