class StaticPagesController < ApplicationController
  def home
    @jobs = Job.all.job_new.paginate page: params[:page], per_page: 10
    @job_slides = Job.job_slide.job_new
    @q = Job.ransack params[:q]
    @jobs = @q.result(distinct: true)
    respond_to do |format|
      format.html
      format.json { render json: @jobs }
    end
  end

   def index
  end
end
