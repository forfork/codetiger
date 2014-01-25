class PostsController < ApplicationController
  def new
  end
  def create
    @post = Post.new
    @post.title = params[:title]
    @post.body = params[:body]
    @post.save

    redirect_to "/posts/new"
  end
  def show
    @post = Post.find(params[:id])
  end
end
