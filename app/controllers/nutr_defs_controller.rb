class NutrDefsController < ApplicationController
    before_filter :authenticate_user!
  # GET /nutr_defs
  # GET /nutr_defs.json
  def index
    @nutr_defs = NutrDef.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @nutr_defs }
    end
  end

  # GET /nutr_defs/1
  # GET /nutr_defs/1.json
  def show
    @nutr_def = NutrDef.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @nutr_def }
    end
  end

  # GET /nutr_defs/new
  # GET /nutr_defs/new.json
  def new
    @nutr_def = NutrDef.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @nutr_def }
    end
  end

  # GET /nutr_defs/1/edit
  def edit
    @nutr_def = NutrDef.find(params[:id])
  end

  # POST /nutr_defs
  # POST /nutr_defs.json
  def create
    @nutr_def = NutrDef.new(params[:nutr_def])

    respond_to do |format|
      if @nutr_def.save
        format.html { redirect_to @nutr_def, notice: 'Nutr def was successfully created.' }
        format.json { render json: @nutr_def, status: :created, location: @nutr_def }
      else
        format.html { render action: "new" }
        format.json { render json: @nutr_def.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /nutr_defs/1
  # PUT /nutr_defs/1.json
  def update
    @nutr_def = NutrDef.find(params[:id])

    respond_to do |format|
      if @nutr_def.update_attributes(params[:nutr_def])
        format.html { redirect_to @nutr_def, notice: 'Nutr def was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @nutr_def.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nutr_defs/1
  # DELETE /nutr_defs/1.json
  def destroy
    @nutr_def = NutrDef.find(params[:id])
    @nutr_def.destroy

    respond_to do |format|
      format.html { redirect_to nutr_defs_url }
      format.json { head :no_content }
    end
  end
end
