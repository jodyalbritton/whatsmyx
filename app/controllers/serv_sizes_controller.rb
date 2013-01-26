class ServSizesController < ApplicationController
  # GET /serv_sizes
  # GET /serv_sizes.json
  def index
    @serv_sizes = ServSize.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @serv_sizes }
    end
  end

  # GET /serv_sizes/1
  # GET /serv_sizes/1.json
  def show
    @serv_size = ServSize.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @serv_size }
    end
  end

  # GET /serv_sizes/new
  # GET /serv_sizes/new.json
  def new
    @serv_size = ServSize.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @serv_size }
    end
  end

  # GET /serv_sizes/1/edit
  def edit
    @serv_size = ServSize.find(params[:id])
  end

  # POST /serv_sizes
  # POST /serv_sizes.json
  def create
    @serv_size = ServSize.new(params[:serv_size])

    respond_to do |format|
      if @serv_size.save
        format.html { redirect_to @serv_size, notice: 'Serv size was successfully created.' }
        format.json { render json: @serv_size, status: :created, location: @serv_size }
      else
        format.html { render action: "new" }
        format.json { render json: @serv_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /serv_sizes/1
  # PUT /serv_sizes/1.json
  def update
    @serv_size = ServSize.find(params[:id])

    respond_to do |format|
      if @serv_size.update_attributes(params[:serv_size])
        format.html { redirect_to @serv_size, notice: 'Serv size was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @serv_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /serv_sizes/1
  # DELETE /serv_sizes/1.json
  def destroy
    @serv_size = ServSize.find(params[:id])
    @serv_size.destroy

    respond_to do |format|
      format.html { redirect_to serv_sizes_url }
      format.json { head :no_content }
    end
  end
end
