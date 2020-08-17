class CompaniesController < ApplicationController
  def show
  	@company = Company.find params[:id]
  	@jobs = @company.user.jobs.all_approved_true.limit(8)
  end


end
