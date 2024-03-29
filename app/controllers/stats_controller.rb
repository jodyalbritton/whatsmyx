class StatsController < ApplicationController
   autocomplete :category, :name, :full => true, :limit => '100', :extra_data => [:sunit]
   before_filter :authenticate_user!, :load

  # GET /stats
  # GET /stats.json


  def load
    @scopes = current_user.circles.map { |r| [r.name, r.id] }
     @scopes.push(["Public", "0"])
    @user = User.find(current_user)
    @stats = @user.stats.order("date DESC").includes(:category)
    @stats_by_cat = @stats.group_by { |s| s.category }
    @stat = Stat.new
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
    @scopes = current_user.circles.map { |r| [r.name, r.id] }
     @scopes.push(["Public", "0"])
    @stat = current_user.stats.build(params[:stat])
    
    respond_to do |format|
    if @stat.save
       format.html { redirect_to root_path, notice: 'Successfully created a Stat!' }
      format.js   {
      flash[:notice] = "Successfully created stat."
      flash.discard
       following = Follow.where(["follower_id = ?", (current_user)])
     following_ids = following.collect{|f| f.followable_id}
     mycircles =  current_user.relationships.collect{|g| g.circle_id}
     mycircles.push(0)
     aoi = Activity.where(:target_type => ["Post", "Stat", "Pactivity", "Meal"], :scope => mycircles )
     @activities = aoi.where(:user_id => [following_ids, current_user] ).page params[:page]      
     @stats = @user.stats.order("date DESC").page(params[:page])
     }
    else 
      format.js   {flash[:error] = "Error"
          flash.discard }
          format.html { redirect_to root_path, notice: 'Errors prevented you from entering the stat' }
    end
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
