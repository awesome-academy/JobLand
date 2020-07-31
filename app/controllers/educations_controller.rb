class EducationsController < ApplicationController

def new
   @education = Education.new
 end

  def create
    @education = Education.new education_params
    if @education.save
      respond_to do |format|
        format.html{render(partial:"new_education")}
        format.json
      end

  end
end

  def edit
    @education = Education.find params[:id]
  end

  def update
    @education = Education.find params[:id]
    if @education.update education_params
      redirect_to edit_education_path
    end
  end

  def destroy
    @education = Education.find params[:id]
    @education.destroy
    respond_to do |format|
        format.html{render(partial:"edit_education")}
        format.json
      end
  end

private

  def education_params
    params.require(:education).permit(:yearschool, :degree, :school, :status)
  end

end
