class CommentsController < ApplicationController
	def create
		@comment = Comment.create(text: params[:text], tweet_id: [:tweet_id], user_id: current_user.id)
		redirect_to "/tweets/#{@comment.tweet_id}"
	end

	private
	def comment_params
		prams.permit(:text, :tweet_id)
	end
end