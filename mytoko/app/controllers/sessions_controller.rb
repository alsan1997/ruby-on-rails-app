class SessionsController < ApplicationController

	def new
	end

	def create
		@user = User.find_by(email: params[:user][:email])
		if @user && @user.password == params[:user][:password]
			session[:user_id] = @user.id
			redirect_to user_products_path(@user.id)
		else
			redirect_to login_path
		end
	end



end
