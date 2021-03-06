class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
	end

	def profile 
		@user = current_user
	end

	private
	   def set_user
	   	params.require(:user).permit(:username)
	   end
end