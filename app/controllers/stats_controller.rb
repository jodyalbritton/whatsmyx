class StatsController < ApplicationController
   autocomplete :category, :name, :full => true, :limit => '100', :extra_data => [:sunit]
   before_filter :authenticate_user!, :load

  # GET /stats
  # GET /stats.json


  def load
    @user = User.find(current_user)
    @stats = @user.stats.order("date DESC").page(params[:page])
    @stat = Stat.new
  end
  
  def chart
  @user = User.find(current_user)
   
   #@stats_by_category = @user.stats.find(:all).group_by { |s| s.category}
   @category =  Category.find(params[:category])
   @stats_by_category = @user.stats.where(:category_id => params[:category]) 
  
   #@stats_by_bs = @user.stats.where(:category_id => "3")
   #@stats_by_bp = @user.stats.where(:category_id => "4") 
   #@stats_by_bf = @user.stats.where(:category_id => "5") 
   # @stats_by_ti = @user.stats.where(:category_id => "6") 
  end 
  def index
     
   
    respond_to do |format|
      format.html # index.html.erb
      format.js #added
      format.json { render json: @stats }
    end
    

  end

  # GET /stats/1
  # GET /stats/1.json
  def show
    @stat = Stat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @stat }
    end
  end

  # GET /stats/new
  # GET /stats/new.json
  def new
    @stat = Stat.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @stat }
    end
  end

  # GET /stats/1/edit
  def edit
    @stat = Stat.find(params[:id])
  end

  # stat /stats
  # stat /stats.json
 def create
    @stat = current_user.stats.build(params[:stat])
    if @stat.save
      flash[:notice] = "Successfully created stat."
       @activities = Activity.order("updated_at DESC")
       @stats = @user.stats.order("date DESC").page(params[:page])
    end
  end

  # PUT /stats/1
  # PUT /stats/1.json
  def update
    @stat = Stat.find(params[:id])

    respond_to do |format|
      if @stat.update_attributes(params[:stat])
        format.html { redirect_to @stat, notice: 'Stat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stats/1
  # DELETE /stats/1.json
  def destroy
    @stat = Stat.find(params[:id])
    @stat.destroy
    
    respond_to do |format|
      format.html { redirect_to stats_url }
      format.js #added
      format.json { head :no_content }
    end
  end
end
