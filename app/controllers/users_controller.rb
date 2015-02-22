class UsersController < ApplicationController

# EVERYTHING IS CURRENTLY GOING TO ROOT PATH 

def new
	@user = User.new
end 


def create
	@user = user.new(user_params)
	if @user.save
		flash[:notice] = "You are now a user!"
		sign_in @user
		redirect_to root_path
	else
		render :new
	end 
end 

private
	def user_params
		params.require(:user).permit(:first_name, :last_name, :email, :password )
	end 



end 
