class PostsController < ApplicationController
	before_action :set_post,only:[:show,:edit,:update,:destroy]
	def create
		@post = Post.new(post_params)
		@post.save
		redirect_to @post, notice: '投稿完了'
	end

	def index
		@posts = Post.all
		
	end
	def new
		@post = Post.new
		
	end

	def show
		@comment = Post.find(params[:id]).comments.build
		
		
	end
	def edit
		
	end
	def update
		@post.title = params[:title]
		@post.description = params[:description]
		@post.price = params[:price]
		@post.rated = params[:rated]
		@post.save
		redirect_to @post,notice: '更新完了'
	end
	def destroy
		@post.destroy
		redirect_to posts_path
		
	end

private
	def set_post
		@post = Post.find(params[:id])
	end
	def post_params
		params.require(:post).permit(:title,:description,:price,:rated)
		
	end
end