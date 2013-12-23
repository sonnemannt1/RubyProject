class PostsController < ApplicationController
    def new
        @posts = Post.all
        end
    def create
        @post = Post.new(post_params)
        @post.save
        redirect_to @post
    end
    def show
        @post = Post.find(params[:id])
        @posts = Post.all
        end
    private
    def post_params
        params.require(:post).permit(:Message, :Name, :Email)
        end
    
end
