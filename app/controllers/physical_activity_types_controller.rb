class PhysicalActivityTypesController < ApplicationController
  # GET /physical_activity_types
  # GET /physical_activity_types.json
  def index
    @physical_activity_types = PhysicalActivityType.page(params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @physical_activity_types }
    end
  end

  # GET /physical_activity_types/1
  # GET /physical_activity_types/1.json
  def show
    @physical_activity_type = PhysicalActivityType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @physical_activity_type }
    end
  end

  # GET /physical_activity_types/new
  # GET /physical_activity_types/new.json
  def new
    @physical_activity_type = PhysicalActivityType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @physical_activity_type }
    end
  end

  # GET /physical_activity_types/1/edit
  def edit
    @physical_activity_type = PhysicalActivityType.find(params[:id])
  end

  # POST /physical_activity_types
  # POST /physical_activity_types.json
  def create
    @physical_activity_type = PhysicalActivityType.new(params[:physical_activity_type])

    respond_to do |format|
      if @physical_activity_type.save
        format.html { redirect_to @physical_activity_type, notice: 'Pactivity type was successfully created.' }
        format.json { render json: @physical_activity_type, status: :created, location: @physical_activity_type }
      else
        format.html { render action: "new" }
        format.json { render json: @physical_activity_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /physical_activity_types/1
  # PUT /physical_activity_types/1.json
  def update
    @physical_activity_type = PhysicalActivityType.find(params[:id])

    respond_to do |format|
      if @physical_activity_type.update_attributes(params[:physical_activity_type])
        format.html { redirect_to @physical_activity_type, notice: 'Physical Activity type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @physical_activity_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /physical_activity_types/1
  # DELETE /physical_activity_types/1.json
  def destroy
    @physical_activity_type = PhysicalActivityType.find(params[:id])
    @physical_activity_type.destroy

    respond_to do |format|
      format.html { redirect_to physical_activity_types_url }
      format.json { head :no_content }
    end
  end
end
