class Employer::MembersController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    addMem = current_user.company.id
    @q = User.user_member(addMem).search params[:q]
    @users = @q.result
    respond_to do |format|
      format.html
      format.json { render json: @users }
    end
  end

  def create
     @member = Member.new member_params
     if @member.save
      redirect_to employer_company_path(@member)
     end
  end

  def new
    @member = Member.new
  end

  def show
    @member = Member.find params[:id]
  end

  def destroy
    @member = Member.find params[:id]
    if @member.destroy
      redirect_to  employer_members_path
    end
  end

  private
  def user_params
    params.require(:user).permit :address, :dob, :sex, :phone
  end

  def member_params
    params.require(:member).permit(:company_id, user_ids: [])
  end
end
