class CvsController < ApplicationController
  def new
    @cv = Cv.new
  end

  def update
    @cv = Cv.find params[:id]
    if @cv.update cv_params
      respond_to do |format|
        format.html{render(partial:"cv_introduction")}
        format.json
      end
    end
  end

  def edit
    @cv = Cv.find params[:id]
  end

  private

  def cv_params
    params.require(:cv).permit(:introduction)
  end
end

