class UsersController < ApplicationController
  def index
    if params[:who_makes_coffee] == "Someone else"
      redirect_to("http://www.findmecoffee.com/")
    else
      @recipes = Recipe.all
      render
    end
  end

  def show
    redirect_to("/users")
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to("/mybestcoffees")
    else
      # render the new.html.erb file with @user
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :name,
      :email,
      :password,
      :password_confirmation
    )
  end

end
