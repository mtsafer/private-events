class ApplicationController < ActionController::Base
	include SessionsHelper
  protect_from_forgery with: :exception

  def current_page
  	request.referrer
  end
end
