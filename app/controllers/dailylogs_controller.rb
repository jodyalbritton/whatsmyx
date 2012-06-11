class DailylogsController < ApplicationController
  # GET /dailylogs
  # GET /dailylogs.json
  def index
    @dailylogs = Dailylog.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dailylogs }
    end
  end

  # GET /dailylogs/1
  # GET /dailylogs/1.json
  def show
    @dailylog = Dailylog.find(params[:date])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dailylog }
    end
  end

  # GET /dailylogs/new
  # GET /dailylogs/new.json
  def new
    @dailylog = Dailylog.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dailylog }
    end
  end

  # GET /dailylogs/1/edit
  def edit
    @dailylog = Dailylog.find(params[:id])
  end

  # POST /dailylogs
  # POST /dailylogs.json
  def create
    @dailylog = Dailylog.new(params[:dailylog])

    respond_to do |format|
      if @dailylog.save
        format.html { redirect_to @dailylog, notice: 'Dailylog was successfully created.' }
        format.json { render json: @dailylog, status: :created, location: @dailylog }
      else
        format.html { render action: "new" }
        format.json { render json: @dailylog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dailylogs/1
  # PUT /dailylogs/1.json
  def update
    @dailylog = Dailylog.find(params[:id])

    respond_to do |format|
      if @dailylog.update_attributes(params[:dailylog])
        format.html { redirect_to @dailylog, notice: 'Dailylog was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dailylog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dailylogs/1
  # DELETE /dailylogs/1.json
  def destroy
    @dailylog = Dailylog.find(params[:id])
    @dailylog.destroy

    respond_to do |format|
      format.html { redirect_to dailylogs_url }
      format.json { head :no_content }
    end
  end
end
