class Api::V1::UsersController < Api::V1::ApplicationController
	before_action :set_user, only: [:sign_out_user]


	def sign_out_user
	   sign_out @user
	   # render :js => "window.location = '/'"
	end

	def save_final_response
		if params[:subm_id] && params[:user_id]
			_submission = Submission.find_by_id(params[:subm_id])
			if !_submission.nil?
				_last = Time.parse("#{params[:lastTime]}").strftime("%Y-%m-%d %H:%M:%S")
				
				_submission.update(response_one: "#{params[:response_one]}", 
								response_two: "#{params[:response_two]}", 
								response_three: "#{params[:response_three]}", 
								response_four: "#{params[:response_four]}", 
								last_saved_timer: _last, finished: true, end_timer: _last)
				
				sign_out_user
				render :js => "window.location = '/'"
				# render json:
				# {
				# 	success: true,
				# 	message: "Response Saved & submitted",
				# 	data: 1,
				# }
			end
		else
			render json:
			{
				success: false,
				message: "Sorry can not submit",
				data: 0,
			}
		end
	end

	def save_user_response
		if params[:subm_id] && params[:user_id]
			_submission = Submission.find_by_id(params[:subm_id])
			if !_submission.nil?
				_last = Time.parse("#{params[:lastTime]}").strftime("%Y-%m-%d %H:%M:%S")
				if "#{params[:flag]}".to_i == 1
					_submission.update(response_one: "#{params[:response]}", last_saved_timer: _last)
				elsif "#{params[:flag]}".to_i == 2
					_submission.update(response_two: "#{params[:response]}", last_saved_timer: _last)
				elsif "#{params[:flag]}".to_i == 3
					_submission.update(response_three: "#{params[:response]}", last_saved_timer: _last)
				elsif "#{params[:flag]}".to_i == 4
					_submission.update(response_four: "#{params[:response]}", last_saved_timer: _last)
				end
					
				render json:
				{
					success: true,
					message: "Response Saved",
					data: _submission.last_saved_timer.to_s,
					data_responses: _submission,
				}
			end
		else
			render json:
			{
				success: false,
				message: "Sorry response can not be saved",
				data: 0,
			}
		end
	end

	def validate_user_token
		if params[:user_id] && params[:secure_key]
			_user = User.find_by_id(params[:user_id])
			if _user.user_token == params[:secure_key]
				if _user.token_used.nil?
					# create a new submission for this user
					_user.update(token_used: true)
					if Submission.find_by_user_id("#{params[:user_id]}").nil?
						_q1 = EASY_HASH.to_a.shuffle.to_h.first
						_med = MEDIUM_HASH.to_a.shuffle.to_h.first(2)
						_q2 = _med.first
						_q3 = _med.last
						_q4 = HARD_HASH.to_a.shuffle.to_h.first
						_start = Time.now
						# _end = Time.now + 60*60 # 60 minutes
						_countdown = Time.now + 60*60 # 60 minutes
						@sub_id = Submission.create(user_id: "#{params[:user_id]}", question_one: _q1, 
							question_two: _q2, question_three: _q3, question_four: _q4, 
							start_timer: _start, timer_countdown: _countdown, finished: false,
							last_saved_timer: _start, end_timer: _countdown )
					end
					# create a new submission for this user
					
					render json:
					{
						success: true,
						message: "Good luck for the test",
						data: @sub_id.id,
					}
				else
					_submission = Submission.find_by_user_id("#{params[:user_id]}")
					if _submission.finished != true
						render json:
						{
							success: true,
							message: "You're taken to your last saved test",
							data:_submission.id,
						}
						# redirect_to "/users/#{params[:user_id]}/submissions/#{_submission.id}"
					else
						render json:
						{
							success: false,
							message: "You've submitted your test already",
							data:0,
						}
					end
				end
			else
				render json:
				{
					success: false,
					message: "Secure key doesn't match",
					data: 0,
				}
			end
		else
			render json:
			{
				success: false,
				message: "Check your secure key",
				data: 0,
			}
		end
	end

	private

	def set_user
		@user = api_current_user
	end
end