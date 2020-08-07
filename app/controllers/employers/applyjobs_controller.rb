class Employers::ApplyjobsController < ApplicationController
  def index
    @job = Job.find params[:job_id]
    @users = @job.users
    @applyjobs = Applyjob.all.paginate(
      page: params[:page], per_page: Settings.paginate)
  end
end