class EventsController < ApplicationController

	def new
		@event = Event.new
	end

	def create
		user = User.find session[:user_id]
		@event = user.events.build event_params
		if @event.save
			redirect_to user_path(user)
		else
			render :new
		end
	end

	def show
		@event = Event.find params[:id]
		@attendees = @event.attendees.all
	end

	def index
		@events_future = Event.future.all
		@events_past = Event.past.all
	end

	private

		def event_params
			params.require(:event).permit(:date, :location, :name, :description)
		end

end
