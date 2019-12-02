class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	include CurrentCart
	before_action :set_cart
	def current_user
	    @current_user ||= User.find_by(id: session[:user_id])
	end
	def logged_in?
	  current_user.present?
	end
end
