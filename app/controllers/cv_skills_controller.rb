class CvSkillsController < ApplicationController
  def index
    @cv_skill  =  CvSkill.new
  end

  def new
    @cv_skill  =  CvSkill.new
    respond_to do |format|
      format.html {render(partial: "skill_form")}
      format.js
      format.json
    end
  end

  def create
    @cv_skill = current_user.cv.cv_skills.build skill_params
    @cv_skill.save
    respond_to do |format|
      format.html {render(partial: "skill_section")}
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
