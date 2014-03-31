class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
      @recipe = Recipe.find_by(id: params[:id])
      @total_time = 0
      @recipe.steps.each do |step|
        @total_time += step.total_time
      end

  end


end
