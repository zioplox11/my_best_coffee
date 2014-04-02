class RecipesController < ApplicationController

  def index
    if params[:who_makes_coffee] == "Someone else"
      redirect_to("http://www.findmecoffee.com/")
    end

    @recipes = Recipe.all
     render :index

  end


  def show

    @recipe = Recipe.find_by(id: params[:id])

    recipe = @recipe.dup
      if (current_user.recipes << recipe)
        flash[:notice] = "You are currently viewing the ORIGINAL recipe page, #{current_user.name}. You have ALSO added this recipe to your own recipe box."
        return render
    end

    return render

  end


  def new

    @recipe = Recipe.new()

  end


  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user_id = current_user.id
    if @recipe.description == nil
      @recipe.description = "No description provided"
    end

    if @recipe.author == nil
      @recipe.description = "No author name provided"
    end

    if @recipe.save
      redirect_to("/recipes/")
    else
      # render the new.html.erb file with @recipe
      render :new
    end


  def edit

      @recipe = Recipe.find_by(id: params[:id])

  end

  def destroy
    recipe = Recipe.find_by(id: params[:id])
    # http://api.rubyonrails.org/classes/ActiveRecord/Relation.html#method-i-destroy
    recipe.destroy
    redirect_to("/")
  end

  end


  private

  def recipe_params
    params.require(:recipe).permit(
      :title,
      :author,
      :description,
      :photo_url,
      :source_url,
      :total_time
    )
  end



end
