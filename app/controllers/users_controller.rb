class UsersController < ApplicationController
  def index
      @users = User.all
  end

  def show
    @user = current_user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.name == nil
      @user.name = "No name provided"
    end

    if @user.save
      session[:user_id] = @user.id
      redirect_to("/users/index")
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
