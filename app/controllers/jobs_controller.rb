class JobsController < ApplicationController
  def show
  	@job = Job.first
	@user = User.first
  end
end
