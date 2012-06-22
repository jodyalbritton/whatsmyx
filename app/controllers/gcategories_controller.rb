class GcategoriesController < ApplicationController
  # GET /gcategories
  # GET /gcategories.json
  def index
    @gcategories = Gcategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gcategories }
    end
  end

  # GET /gcategories/1
  # GET /gcategories/1.json
  def show
    @gcategory = Gcategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gcategory }
    end
  end

  # GET /gcategories/new
  # GET /gcategories/new.json
  def new
    @gcategory = Gcategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gcategory }
    end
  end

  # GET /gcategories/1/edit
  def edit
    @gcategory = Gcategory.find(params[:id])
  end

  # POST /gcategories
  # POST /gcategories.json
  def create
    @gcategory = Gcategory.new(params[:gcategory])

    respond_to do |format|
      if @gcategory.save
        format.html { redirect_to @gcategory, notice: 'Gcategory was successfully created.' }
        format.json { render json: @gcategory, status: :created, location: @gcategory }
      else
        format.html { render action: "new" }
        format.json { render json: @gcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gcategories/1
  # PUT /gcategories/1.json
  def update
    @gcategory = Gcategory.find(params[:id])

    respond_to do |format|
      if @gcategory.update_attributes(params[:gcategory])
        format.html { redirect_to @gcategory, notice: 'Gcategory was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gcategories/1
  # DELETE /gcategories/1.json
  def destroy
    @gcategory = Gcategory.find(params[:id])
    @gcategory.destroy

    respond_to do |format|
      format.html { redirect_to gcategories_url }
      format.json { head :no_content }
    end
  end
end
