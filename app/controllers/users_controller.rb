class UsersController < ApplicationController
  before_action :show_user, only: :show

  def new
    @cv_language  =  CvLanguage.new
    @cv_skill = CvSkill.new
  end

  def create
    @user = current_user
    @user.image.attach(params[:image])
  end

  def show
    @user = User.find params[:id]
    @education = Education.new
    @educations = @user.cv.educations
    @experience  =  Experience.new
    @experiences = @user.cv.experiences
    @portfolio = Portfolio.new
    @portfolios = @user.cv.portfolios
    @cv_skill = CvSkill.new
    @cv_language = CvLanguage.new
    @cv = Cv.find params[:id]
    @profile = Profile.find params[:id]
    @applyjobs = Applyjob.all
    @bookmarks = Bookmark.all
  end

  def update

    @user = User.find params[:id]
    if @user.update(user_params)
      redirect_to user_path(@user)
      # respond_to do |format|
      #   format.html{render "user_path(@user)"}
      #   format.json
      # end
    end
  end

  def following
    @title = t("userp.following")
    @user = User.find(params[:id])
    @profile = current_user.profile
    @users = @user.following
    render 'show_follow_user'
  end

  def followers
    @title = t("userp.followers")
    @user = User.find(params[:id])
    @profile = current_user.profile
    @users = @user.followers
    render 'show_follow_user'
  end

  private
  def language_params
    params.require(:cv_language).permit :language_id
  end

  def user_params
    params.require(:user).permit :address, :dob, :sex, :phone, :image,
    images_attributes: [:id, :room_id, :image_link]
  end

  def show_user
    unless current_user.id == params[:id].to_i
      flash[:danger] = t("search.cannot access")
      redirect_to request.referrer || root_url
    end
  end
end
