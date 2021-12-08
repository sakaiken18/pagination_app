class PostsController < ApplicationController
  PER_PAGE = 10

  def index
    @post = Post.new
    @posts = Post.page(params[:page]).per(PER_PAGE).order("id DESC")
  end

  def create
    post = Post.create!(post_params)
    redirect_to root_path
  end
end

private

def post_params
  params.require(:post).permit(:body)
end
