class TweetsController < ApplicationController

  def index
  @tweets = Tweet.search_for(params[:q])

  end

  def new
  @tweets = Tweet.new()
  end

  def edit
  end

  def show
  end

  def destroy
  end

  
end
