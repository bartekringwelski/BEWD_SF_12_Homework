class TweetsController < ApplicationController

  def index
  @tweets = Tweet.search_for(params[:q])

  end

  def new
  @tweet = Tweet.new()
  end


  def create
  @tweet = Tweet.new(safe_tweet_params)
  if @tweet.save
      redirect_to @tweet
    else
      render "new"
  end
end


  def edit
   @tweet = Tweet.find(params[:id])
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def destroy
  end

   def update
    @tweet = Tweet.find(params[:id])
    @tweet.update safe_tweet_params
    if @tweet.save
    redirect_to @tweet
    else
      render "edit"
    end
  end

  private
    def safe_tweet_params
      params.require('tweet').permit(:text)
    end



  
end
