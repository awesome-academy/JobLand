class ApplyjobsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
  	@applyjobs = @user.applyjobs.paginate(
      page: params[:page], per_page: Settings.paginate)
  end

  def create
  	@applyjob = current_user.applyjobs.build applyjob_params
  	@applyjob.save
    redirect_to user_applyjobs_path
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
