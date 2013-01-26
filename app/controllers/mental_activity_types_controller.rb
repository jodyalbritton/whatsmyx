class MentalActivityTypesController < ApplicationController
  # GET /mental_activity_types
  # GET /mental_activity_types.json
  def index
    @mental_activity_types = MentalActivityType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mental_activity_types }
    end
  end

  # GET /mental_activity_types/1
  # GET /mental_activity_types/1.json
  def show
    @mental_activity_type = MentalActivityType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mental_activity_type }
    end
  end

  # GET /mental_activity_types/new
  # GET /mental_activity_types/new.json
  def new
    @mental_activity_type = MentalActivityType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mental_activity_type }
    end
  end

  # GET /mental_activity_types/1/edit
  def edit
    @mental_activity_type = MentalActivityType.find(params[:id])
  end

  # POST /mental_activity_types
  # POST /mental_activity_types.json
  def create
    @mental_activity_type = MentalActivityType.new(params[:mental_activity_type])

    respond_to do |format|
      if @mental_activity_type.save
        format.html { redirect_to @mental_activity_type, notice: 'Mental activity type was successfully created.' }
        format.json { render json: @mental_activity_type, status: :created, location: @mental_activity_type }
      else
        format.html { render action: "new" }
        format.json { render json: @mental_activity_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mental_activity_types/1
  # PUT /mental_activity_types/1.json
  def update
    @mental_activity_type = MentalActivityType.find(params[:id])

    respond_to do |format|
      if @mental_activity_type.update_attributes(params[:mental_activity_type])
        format.html { redirect_to @mental_activity_type, notice: 'Mental activity type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mental_activity_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mental_activity_types/1
  # DELETE /mental_activity_types/1.json
  def destroy
    @mental_activity_type = MentalActivityType.find(params[:id])
    @mental_activity_type.destroy

    respond_to do |format|
      format.html { redirect_to mental_activity_types_url }
      format.json { head :no_content }
    end
  end
end
