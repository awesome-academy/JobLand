class ExperiencesController < ApplicationController
  def index
    @experience  =  Experience.new
    @experiences = current_user.cv.experiences
  end

  def new
    @experience  =  Experience.new
    respond_to do |format|
      format.html {render(partial: "experience_form")}
      format.js
      format.json
    end
  end

  def create
    @experience = current_user.cv.experiences.build experience_params
    @experience.save
    @experiences = current_user.cv.experiences
    @experience  =  Experience.new
    flash[:success] = t("global.experience.success")
    respond_to do |format|
      format.html {render(partial: "experience_section")}
      format.js
      format.json
    end
  end

  def edit
    @experience = Experience.find params[:id]
    respond_to do |format|
      format.html {render(partial: "experience_form")}
      format.js
      format.json
    end
  end

  def update
    @experience = Experience.find params[:id]
    @experience.update(experience_params)
    @experience  =  Experience.new
    @experiences = current_user.cv.experiences
    flash[:success] = t("global.experience.success")
    respond_to do |format|
      format.html {render(partial: "experience_section")}
      format.js
      format.json
    end
  end

  def destroy
    @experience = Experience.find params[:id]
    @experience.destroy
    flash[:success] = t("global.experience.remove")
    respond_to do |format|
      format.html
      format.js
    end
  end

  private
  def experience_params
    params.require(:experience).permit :name ,:title ,:description ,:work_status,
      :work_status2,:work_date,:work_date2
  end
end

