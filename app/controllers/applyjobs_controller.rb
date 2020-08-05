class ApplyjobsController < ApplicationController
  before_action :authenticate_user!

  def index
  	@applyjobs = current_user.applyjobs
  end

  def create
  	@applyjob = current_user.applyjobs.build applyjob_params
  	@applyjob.save
  	respond_to do |format|
      format.html {  render partial: 'applyjobs/appliedjob_form' }
      format.js
    end
  end

  def destroy
  end

  private

  def applyjob_params
  	params.require(:applyjob).permit :job_id
  end
end
