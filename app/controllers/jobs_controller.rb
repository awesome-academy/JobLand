class JobsController < ApplicationController
	before_action :authenticate_user!

  def show
  	@job = Job.find params[:id]
  	@user = User.first
  	@applyjob = Applyjob.new
  	@appliedjob = Applyjob.appliedjob(@job.id, current_user.id).first
    unless @job.approved
      redirect_to root_path
    end
  end
end
