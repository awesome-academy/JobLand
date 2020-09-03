class JobsController < ApplicationController
  def index
    @company = Company.find params[:company_id]
    @jobs = @company.user.jobs.all_approved_true
  end

  def show
  	@job = Job.find params[:id]
  	@user = User.first
    @bookmark = Bookmark.new
    @bookmarked = Bookmark.bookmarked(@job.id, current_user.id).first
  	@applyjob = Applyjob.new
  	@appliedjob = Applyjob.appliedjob(@job.id, current_user.id).first
    @id = @job.id
    @job_similar = Job.job_similar(@id)
    unless @job.approved
      redirect_to root_path
    end
  end
end
