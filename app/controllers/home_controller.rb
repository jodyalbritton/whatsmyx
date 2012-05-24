class HomeController < ApplicationController
    def index
   @user = User.find(current_user)
   @stats = @user.stats.page(params[:page] ).per(5)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stats }
    end
  end
end
