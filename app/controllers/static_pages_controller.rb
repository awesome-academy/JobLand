class StaticPagesController < ApplicationController
  def home
    @bookmark = Bookmark.new
    if params[:type] =="newest"|| params[:type].nil?
      @approvedJobs = Job.all.job_new.all_approved_true.page(params[:page]).per(10)
    elsif params[:type] =="recommended"
      @job_Recommended = Job.job_Recommended.job_salary.job_new.all_approved_true.page(params[:page]).per(10)
    end
    @job_slides = Job.job_slide.job_new
    @q = Job.ransack params[:q]
    @jobs = @q.result
    respond_to do |format|
      format.html
      format.json { render json: @jobs.limit(5) }
    end
  end

  def index
  end
end
