class MybestcoffeesController < ApplicationController
  def index
    @user = User.find_by(params[:name])
    render
  end

  def show
    flash[:notice] = "Thanks for signing up for a new account, #{current_user.name}!!!"
    redirect_to("/recipes/index")
  end

end

