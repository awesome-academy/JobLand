class Employer::CompaniesController < ApplicationController
  before_action :authenticate_user!

  def new
    @company = Company.new
    @member = Member.new
    @user = User.new
  end

  def index
    @member = Member.all
    @jobs = current_user.jobs.limit(Settings.jobs)
    @prices = Stripe::Price.list(
      lookup_keys: ['starter', 'pro', 'enterprise'],
      expand: ['data.product']
    ).data.sort_by {|p| p.unit_amount}
  end

  def show
    @company = Company.find params[:id]
    @user_company = @company.users.page(params[:page]).per(5)
    @member = Member.new
    @user = User.new
    @q = User.ransack params[:q]
    @users = @q.result(distinct: true).limit(5)
    respond_to do |format|
      format.html
      format.json { render json: @users }
    end
  end

  def create
    @company = Company.new company_params
    @company.user_id = current_user.id
    @company.image.attach(params[:company][:image])
    Stripe::Charge.create(
     :amount => 500,
     :currency => "usd",
     :source => params[:stripeToken],
     :description => "Charge for jenny.rosen@example.com"
    )
    if @company.save
      redirect_to employer_company_path(@company)
    end
  end

  def edit
    @company = Company.find params[:id]
  end

  def update
    @company = Company.find params[:id]
    if @company.update company_params
      redirect_to employer_company_path
    end
  end

  private

  def company_params
     params.require(:company).permit(:full_name, :address, :phone, :link,:map,
      :total, :email, :descr, :image, :user_ids => [])
  end
end
