class RecipesController < ApplicationController
  def index
  	@search_keyword = params[:search] || "chocolate"
  	@recipes = Recipe.for(@search_keyword)
  end
end
