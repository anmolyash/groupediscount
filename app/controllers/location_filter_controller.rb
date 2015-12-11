class LocationFilterController < ApplicationController

	

	def create
	   $search = params[:name]
       redirect_to :action => "index"
    
		
    end

    def index
       @builder = Builder.all
      
	end
	

	def show
     
     
    end
     
end
