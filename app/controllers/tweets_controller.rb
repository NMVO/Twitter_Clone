class TweetsController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :destroy, :new]

  def index
  	@tweets = Tweet.all
  end

  def show
  end
end
