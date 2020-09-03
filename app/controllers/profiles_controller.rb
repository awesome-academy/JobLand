class ProfilesController < ApplicationController
  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.find params[:id]
    @profile.images.attach(params[:image])
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

  def edit
    @profile = Profile.find params[:id]
  end

  def update
    @profile = Profile.find params[:id]
    if @profile.update profile_params
      redirect_to user_path current_user
    end
  end

  private
  def profile_params
    params.require(:profile).permit(:image)
  end
end







