class CommentsController < ApplicationController

	def new
	@comment = Comment.new
	end

	def create
		@concert=MusicConcert.find_by(id: params[:music_concert_id])
		@comment=@concert.comments.new(params_comment)
		if @comment.save
			redirect_to music_concert_path(@concert)
		end
	end

	private
	def params_comment
		params.require(:comment).permit(:body)
	end
end
