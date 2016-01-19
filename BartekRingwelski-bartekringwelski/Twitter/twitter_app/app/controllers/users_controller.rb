class UsersController < ApplicationController

  #before_action :load_shirt, only: [:edit, :show, :update]

  def new
   @users = User.all()

  end

  def create
    @user = User.new()
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
  end

  def show

  end
end
