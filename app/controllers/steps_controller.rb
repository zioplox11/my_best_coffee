class StepsController < ApplicationController

  def index
    @steps = Step.all
  end

  def show
    @step = Step.find_by(id: params[:id], recipe_id: params[:recipe_id])
    @recipe = Recipe.find_by(id: params[:recipe_id])
  end

  def new
    @step = Step.new()
  end

  def edit
    @step = Step.find_by(id: params[:id], recipe_id: params[:recipe_id])
  end


  def update
    @step = Step.find_by(id: params[:id])
    @step.update(step_params)
    redirect_to recipes_path
  end

  def create
    @step = Step.new(step_params)

    if @step.name == nil
      @step.name = "No name provided"
    end

    if @step.save
      redirect_to("/step/params[:id]")
    else
      # render the new.html.erb file with @user
      render :new
    end

  end


  private

  def step_params
    params.require(:step).permit(
      :name,
      :description,
      :total_time,
    )
  end


end
