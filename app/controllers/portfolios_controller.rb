class PortfoliosController < ApplicationController
	before_action :authenticate_user!
  
	def new
    @portfolio = Portfolio.new
	end
  
  def create
  	@portfolio = current_user.cv.portfolios.build portfolio_params
  	@portfolio.image.attach params[:portfolio][:image]
  	@portfolio.save
    flash[:success] = "Created"
    respond_to do |format|
      format.html {render(partial: "portfolio")}
      format.js
      format.json
    end
  end

  def destroy
  	@portfolio = Portfolio.find params[:id]
  	@portfolio.destroy
  	flash[:success] = "Deleted"
    respond_to do |format|
      format.html
      format.js
    end
  end

  private
  def portfolio_params
  	params.require(:portfolio).permit :title, :link, :image,
  	                                  :description, :year, :month
  end
end
