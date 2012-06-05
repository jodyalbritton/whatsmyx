class MpostsController < ApplicationController

before_filter :load

  def load
    @mposts = Mpost.order("created_at DESC")
    @mpost = Mpost.new
    

  end

  def index
  end

  def create
  
 
    @mpost = current_user.mposts.build(params[:mpost])
    if @mpost.save
      flash[:notice] = "Successfully created mpost."
       @mposts = Mpost.order("updated_at DESC")
    end
  end

  def edit
    @mpost = Mpost.find(params[:id])
  end

  def update
    @mpost = Mpost.find(params[:id])
    if @mpost.update_attributes(params[:mpost])
      flash[:notice] = "Successfully updated mpost."
        @mposts = Mpost.order("updated_at DESC")
    end
  end

  def destroy
    @mpost = Mpost.find(params[:id])
    @mpost.destroy
    flash[:notice] = "Successfully destroyed mpost."
     @mposts = Mpost.order("updated_at DESC")
  end
end
