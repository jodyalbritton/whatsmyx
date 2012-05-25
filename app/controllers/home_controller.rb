class HomeController < ApplicationController
    def index
     @stat = current_user.stats.build 
  end
end
