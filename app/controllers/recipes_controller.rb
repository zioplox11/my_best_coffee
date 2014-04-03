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

  end


  def new

      @recipe = Recipe.new()
      render

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

  end




  def edit

    # in the future, edits will be allowed on ones own recipes and not anyone else's recipes -- unless your admin status permits it.
    # @recipe = Recipe.find_by(id: params[:id])
    # if logged_in? && current_user.id == @recipe.user.id
    # @recipe = Recipe.find_by(id: params[:id], user_id: params[:user_id])
    # else if logged_in? && current_user.id != @recipe.user.id && current_user.admin_status >= 3
    # @recipe = Recipe.find_by(id: params[:id], user_id: params[:user_id])

    if logged_in? && recipe = Recipe.find_by(id: params[:id])
      original_steps = recipe.steps
      my_recipe = recipe.dup
      my_recipe.save
      original_steps.each do
        |step| my_recipe.steps << step.dup
        my_recipe.save
      end
      if (current_user.recipes << my_recipe && recipe.steps << original_steps)
        flash[:notice] = "You are currently viewing your copy of the original recipe, #{current_user.name}. You have successfully added this recipe to your recipe box and can modify it over time as you see fit."
        return redirect_to(my_recipe)
      end
    end


  end


  def update
    @recipe = Recipe.find_by(id: params[:id], user_id: params[:user_id])
    @recipe.update(recipe_params)
    redirect_to recipes_path
  end




  def destroy
    recipe = Recipe.find_by(id: params[:id])
    # http://api.rubyonrails.org/classes/ActiveRecord/Relation.html#method-i-destroy
    recipe.destroy
    redirect_to("/")
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
