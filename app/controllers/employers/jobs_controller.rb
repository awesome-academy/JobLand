class Employers::JobsController < ApplicationController
	def new
		@jobs = Job.new
	end

	def create 
		company = Company.first
		@jobs = company.jobs.build job_params
		if @jobs.save
			flash[:success] = "Job created!"
      redirect_to root_url
		else
			flash[:success] = "Job error!"
			redirect_to root_url
		end
	end

	def show
		@job = Job.first
		@user = User.first
	end
	
	private
  def job_params
    params.require(:job).permit :id, :title, :sex,:company_id ,
     :time_work, :grade, :exp, :salary, :number, :area, :info
  end

end