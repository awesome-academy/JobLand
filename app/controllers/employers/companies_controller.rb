class Employers::CompaniesController < ApplicationController
  before_action :authenticate_user!

  def new
    @company = Company.new
  end

  def index
    @jobs = current_user.jobs.count
  end

  def show
    @company = Company.find params[:id]
  end

  def create
    @company = Company.new company_params
    @company.user = current_user
    if @company.save
      redirect_to employers_company_path(@company)
    end
  end

  def edit
    @company = Company.find params[:id]
  end

  def update
    @company = Company.find params[:id]
    if @company.update company_params
      redirect_to employers_company_path
    end
  end

  private

  def company_params
     params.require(:company).permit(:full_name, :address, :phone, :link, :total, :email, :descr)
  end
end
