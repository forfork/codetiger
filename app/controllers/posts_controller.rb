class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def new
    # 아래 @post는 new.html.erb 에서 에러를 뿜지 않게 하기 위해서 추가함.
    # create action과 맞물려서 이해하세요!
    @post = Post.new
  end
  def create
    @post = Post.new
    @post.title = params[:title]
    @post.body = params[:body]
    # Post 모델의 validates을 통과하면 /posts URL로 가고 아니면 다시 new 페이지가 나옴
    if @post.save
      redirect_to "/posts"
    else
      # 이 render의 경우 create액션에 있는 @post을 가지고 new.html.erb을 키게 됨.
      render :new
    end
  end
  def show
    @post = Post.find(params[:id])
  end
end
