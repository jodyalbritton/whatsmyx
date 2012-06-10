class StreamsController < ApplicationController

def index 
        
        @activities = Activity.all

end 


end
