class PostsController < ApplicationController
  PER_PAGE = 10

  def index
    @posts = Post.page(params[:page]).per(PER_PAGE).order("id DESC")
  end

  def create
  end
end
