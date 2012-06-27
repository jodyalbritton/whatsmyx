class PactivitiesController < ApplicationController
    autocomplete :exercise, :name, :full => true, :limit => '100', :extra_data => [:category]
  # GET /pactivities
  # GET /pactivities.json
  def index
    @user = User.find(current_user)
    @pactivities = @user.pactivities

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

    respond_to do |format|
      if @pactivity.save
        format.html { redirect_to @pactivity, notice: 'Pactivity was successfully created.' }
        format.json { render json: @pactivity, status: :created, location: @pactivity }
      else
        format.html { render action: "new" }
        format.json { render json: @pactivity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pactivities/1
  # PUT /pactivities/1.json
  def update
    @pactivity = Pactivity.find(params[:id])

    respond_to do |format|
      if @pactivity.update_attributes(params[:pactivity])
        format.html { redirect_to @pactivity, notice: 'Pactivity was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pactivity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pactivities/1
  # DELETE /pactivities/1.json
  def destroy
    @pactivity = Pactivity.find(params[:id])
    @pactivity.destroy

    respond_to do |format|
      format.html { redirect_to pactivities_url }
      format.json { head :no_content }
    end
  end
end
