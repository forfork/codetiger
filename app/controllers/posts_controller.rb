class PostsController < ApplicationController
  def new
  end
  def create
    render text: "#{params.inspect}"
  end
end
