class PostsController < ApplicationController
	def index
		@posts = Post.all
	end
	def new
		@post = Post.new
	end
	def create
		p @post = Post.new(post_params)
		if @post.save
			flash.notice = "Feedback recieved!"
			redirect_to @post
		else
			render :new
		end
	end

private

def post_params
    params.require(:post).permit(:name, :feedback)
end

end

