class CvSkillsController < ApplicationController
  def new
    @cv_skill  =  CvSkill.new
  end

  def create
    @cv_skill = current_user.cv.cv_skills.build skill_params
    @cv_skill.save
    flash[:success] = t("global.experience.success")
    respond_to do |format|
      format.html {render(partial: "cv_skill")}
      format.js
      format.json
    end
  end

  def destroy
    @cv_skill = CvSkill.find params[:id]
    @cv_skill.destroy
    flash[:success] = t("global.experience.remove")
    respond_to do |format|
      format.html
      format.js
    end
  end

  private
  def skill_params
    params.require(:cv_skill).permit :skill_id
  end
end
