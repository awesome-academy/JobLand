class StaticPagesController < ApplicationController
  before_action :authenticate_user!
  def home
    @bookmark = Bookmark.new
    if params[:type] =="newest"|| params[:type].nil?
      @approvedJobs = Job.all.job_new.all_approved_true.page(params[:page]).per(10)
    elsif params[:type] =="recommended"  
      @job_Recommended = Job.all.job_Recommended.job_new.all_approved_true.page(params[:page]).per(10)
    end
    @job_slides = Job.job_slide.job_new
    @q = Job.ransack params[:q]
    @jobs = @q.result.includes(:company)
    respond_to do |format|
      format.html
      format.json { render json: @jobs }
    end
  end

  def index
  end
end
