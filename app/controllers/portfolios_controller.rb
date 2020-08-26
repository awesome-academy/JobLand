class PortfoliosController < ApplicationController
  def index
    @portfolio = Portfolio.new
    @portfolios = current_user.cv.portfolios
  end

	def new
    @portfolio = Portfolio.new
    respond_to do |format|
      format.html {render(partial: "portfolio_form")}
      format.js
      format.json
    end
	end

  def create
  	@portfolio = current_user.cv.portfolios.build portfolio_params
  	@portfolio.image.attach params[:portfolio][:image]
  	@portfolio.save
    @portfolios = current_user.cv.portfolios
    @portfolio = Portfolio.new
    respond_to do |format|
      format.html {render(partial: "portfolio_section")}
      format.js
      format.json
    end
  end

  def edit
    @portfolio = Portfolio.find params[:id]
    respond_to do |format|
      format.html {render(partial: "portfolio_form")}
      format.js
      format.json
    end
  end

  def update
    @portfolio = Portfolio.find params[:id]
    @portfolio.image.attach params[:portfolio][:image]
    @portfolio.update(portfolio_params)
    @portfolio = Portfolio.new
    @portfolios = current_user.cv.portfolios
    respond_to do |format|
      format.html {render(partial: "portfolio_section")}
      format.js
      format.json
    end
  end

  def destroy
  	@portfolio = Portfolio.find params[:id]
  	@portfolio.destroy
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
