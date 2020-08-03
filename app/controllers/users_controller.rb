class UsersController < ApplicationController
  def new
    @cv_language  =  CvLanguage.new
    @skill = Skill.new
  end

  def show
    @user = User.find params[:id]
    @cv = Cv.find params[:id]
    @skill = Skill.all
  end

  def update
    @user = User.find params[:id]
    if @user.update
      respond_to do |format|
        format.html{render(partial:"user_edit_profile")}
        format.json
      end
    end
  end

  def language_params
    params.require(:cv_language).permit :language_id
  end
end
 