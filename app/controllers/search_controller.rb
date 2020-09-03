class SearchController < ApplicationController
  def index
    if params["type"].nil?
      @cvs = Cv.search params["query"], operator: "or", page: params[:page], per_page: 5
      @companies = Company.search params["query"], operator: "or", suggest: true, page: params[:page], per_page: 5
    elsif params["type"]=="company"
      @companies = Company.search params["query"], operator: "or", suggest: true, page: params[:page], per_page: 5
    elsif params["type"]=="profile"
      @cvs = Cv.search params["query"], operator: "or", page: params[:page], per_page: 5
    end
  end

  def autocomplete
    render json:
    Company.search(params["term"], {
      fields: ["full_name"],
      match: :word_start,
      limit: 5
      }).map(&:full_name)+
    User.search(params["term"], {
      fields: ["fullname"],
      match: :word_start,
      limit: 5
      }).map(&:fullname)
  end
end
