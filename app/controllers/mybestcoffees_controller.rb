class MybestcoffeesController < ApplicationController
  def index
    @user = User.find_by(params[:name])
    render
  end
end

