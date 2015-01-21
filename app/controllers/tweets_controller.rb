class TweetsController < ApplicationController
  before_action :set_tweet, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:edit, :update, :destroy, :new]
  

  def index
  	@tweets = Tweet.all
  end

  def show
  end

  def new
  	@tweet = Tweet.new
  end

  def create 
  	@tweet = Tweet.new(tweet_params)
  	if @tweet.save
  		redirect_to @tweet
  	else
  		render :new
  	end
  end

  def edit
  end

  def update 
  	if @tweet.update_attributes(tweet_params)
  		redirect_to @tweet
  	else
  		render :edit
  	end
  end

  def destroy
  	@tweet.destroy
  	redirect_to tweet_url
  end

  private

  def set_tweet
  	@tweet = Tweet.find(params[:id])
  end

  def tweet_params
  	params.require(:tweet).permit(:body, :user)
  end
end

