class JobsController < ApplicationController
  def show
  	@job = Job.first
	@user = User.first
	@applyjob = Applyjob.new
	@appliedjob = Applyjob.appliedjob(@job.id, current_user.id).first
  end
end
