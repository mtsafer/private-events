class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by_name(params[:session][:id]) || \
					 User.find_by_id(params[:session][:id])
		if user
			log_in user
			redirect_to user_url(user)
		else
			render :new
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_url
	end
end
