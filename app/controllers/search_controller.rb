class SearchController < ApplicationController
  def index
    if params["type"].nil?
      @cvs = Cv.__elasticsearch__.search params["all"]
      @companies = Company.__elasticsearch__.search params["all"]
    elsif params["type"]=="company"
      @companies = Company.__elasticsearch__.search params["all"]
    elsif params["type"]=="profile"
      @cvs = Cv.__elasticsearch__.search params["all"]
    end
  end
end
