class ApplyjobsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
  	@applyjobs = @user.applyjobs
  end

  def create
  	@applyjob = current_user.applyjobs.build applyjob_params
  	@applyjob.save
    redirect_to job_path(@applyjob.job.id)
  	# respond_to do |format|
   #    format.html {  render partial: 'applyjobs/appliedjob_form' }
   #    format.js
   #  end
  end

  def destroy
  end

  private

  def applyjob_params
  	params.require(:applyjob).permit :job_id
  end
end
