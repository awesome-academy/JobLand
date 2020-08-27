class Employer::ApplicationsController < ApplicationController
	before_action :user_employer?
  def index
  	@applycations = []
  	current_user.jobs.each do |job|
  		job.applyjobs.each do |applyjob|
  			@applycations << applyjob
  		end 
  	end

  	@jobs = current_user.jobs
  end
end
