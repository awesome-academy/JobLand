class JobsController < ApplicationController
	def index
	end

	def show
		@job = Job.find 1
		@user = User.find 1
	end
end
