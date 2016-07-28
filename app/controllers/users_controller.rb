class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.new user_params
		if @user.save
			log_in @user
			redirect_to user_url(@user)
		else
			render :new
		end
	end

	def show
		@user = User.find params[:id]
		@events = @user.events.all
		@attended_events_past = @user.past_events
		@attended_events_future = @user.future_events
	end

	private

		def user_params
			params.require(:user).permit(:name)
		end

end
