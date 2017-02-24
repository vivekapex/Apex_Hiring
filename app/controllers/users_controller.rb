class UsersController < ApplicationController
	# before_action :authenticate_user!

	def index
		if current_user.id == 1
			@users = User.all
			@submissions = Submission.all
		else
			redirect_to :back, :alert => "Access denied."
		end
	end

	def show
		@user = User.find(params[:id])
		unless @user == current_user
			redirect_to :back, :alert => "Access denied."
		end
	end
end
