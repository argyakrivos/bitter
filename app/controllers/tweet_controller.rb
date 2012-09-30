class TweetController < ApplicationController
	def index
		@tweets = Tweet.all
	end

	def new
	end

	def create
		@tweet = Tweet.new(params[:tweet])
		if @tweet.save
			redirect_to :action => :show, :id => @tweet.id
		else
			flash[:warnings] = @tweet.errors
			redirect_to :action => :new
		end
	end

	def show
		@tweet = Tweet.find(params[:id])
	end

	def delete
		@tweet = Tweet.find(params[:id])
		@tweet.destroy
	end
end
