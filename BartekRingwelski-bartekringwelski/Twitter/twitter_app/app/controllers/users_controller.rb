class UsersController < ApplicationController

  #before_action :load_shirt, only: [:edit, :show, :update]
  #validates :name, presence: true

 def index
  @users = User.all()
 end


  def new
   @user = User.new()

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
