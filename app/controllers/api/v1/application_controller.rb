class Api::V1::ApplicationController < ApplicationController
	skip_before_action :authenticate_user!

	def api_current_user
		current_user
	end
end