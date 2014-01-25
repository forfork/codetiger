class PostsController < ApplicationController
  def new
  end
  def create
    puts "debug==========="
    p params
    puts "debug==========="
    @post = Post.new
    @post.title = params[:title]
    @post.body = params[:body]
    @post.save

    redirect_to "/posts/new"
  end
end
