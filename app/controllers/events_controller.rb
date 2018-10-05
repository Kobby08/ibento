class EventsController < ApplicationController
	def new
		
		@event = Event.new
	end

	def create
		@event = Event.new(:params)
		if event.save
			flash[:notice] = "Event was created succesfully"
			redirect_to @event
		else
			flash.now[:alert] = "Event was not created!"
			render "new"
		end
		
	end





	private
		def params
			params.require(:event).permit(:title, :description, :start_date, :end_date, :venue, :location)
		end
end
