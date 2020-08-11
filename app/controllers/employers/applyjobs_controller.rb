class Employers::ApplyjobsController < ApplicationController
  def index
    @job = Job.find params[:job_id]
    @users = @job.applying
    @applyjobs = Applyjob.all.page params[:page]
  end
end