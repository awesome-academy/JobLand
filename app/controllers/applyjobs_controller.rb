class ApplyjobsController < ApplicationController
  def index
    @user = current_user
    @profile = current_user.profile
  	@applyjobs = @user.applyjobs.paginate(
      page: params[:page], per_page: 5)
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
    @applyjob = Applyjob.find params[:id]
    @applyjob.destroy
    flash[:success] = t("aj.profile updated")
    redirect_to user_applyjobs_path
  end

  private

  def applyjob_params
  	params.require(:applyjob).permit :job_id
  end
end
