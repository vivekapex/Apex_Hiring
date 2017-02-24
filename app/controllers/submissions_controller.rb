class SubmissionsController < ApplicationController

	def show #/users/:user_id/submissions/:id
		@submission = Submission.find_by_id(params[:id])
		@user = User.find_by_id(params[:user_id])
		if (@submission.last_saved_timer.to_s == @submission.timer_countdown.to_s) || @submission.finished == true
			redirect_to "/login"
		end
	end
end
