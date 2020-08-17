class Employer::JobsController < ApplicationController
	  before_action :authenticate_user!

	def index
		@jobs = current_user.jobs.page params[:page]
		@company = current_user.company
	end

	def show
		@job = Job.find params[:id]
		@users = @job.applyjobs
    @applyjobs = @job.applyjobs.page params[:page]
	end

	def new
		@jobs = Job.new
	end

	def create
		@job = current_user.jobs.build job_params
		if @job.save
			flash[:success] = t("job.jobCreate")
      redirect_to root_url
		else
			flash[:success] = t("job.JobError")
			redirect_to root_url
		end
	end

	def edit
		@job = Job.find params[:id]
	end

	def update
		@job = Job.find params[:id]
		if @job.update job_params
			flash[:success] = t("job.JobUpdate")
			redirect_to employers_jobs_path
		else
			flash[:success] = t("job.JobError")
		end
	end
	def destroy
    @job = Job.find params[:id]
    @job.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: t("job.JobDelete")}
      format.json { head :no_content }
      format.js   { render layout: false }
    end
  end

	private
  def job_params
    params.require(:job).permit :title, :sex ,
     :time_work, :grade, :exp, :salary, :number,:from_date,:to_date, :area, :info
  end

end
