class StaticPagesController < ApplicationController

  def home
    @job_news = Job.all.job_new.paginate page: params[:page], per_page: 10
    @job_slides = Job.job_slide.job_new
  end

 
end
