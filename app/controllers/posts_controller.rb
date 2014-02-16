class PostsController < ApplicationController
  before_filter :verify, only: [:show]
  def index
    @user = User.new
    @posts = Post.all
  end
  def new
    # 아래 @post는 new.html.erb 에서 에러를 뿜지 않게 하기 위해서 추가함.
    # create action과 맞물려서 이해하세요!
    @post = Post.new
  end
  def create
    # @post = Post.new
    # @post.title = params[:title]
    # @post.body = params[:body]

    # strong parameter을 활용하여 11~13 line을 refactoring한 코드
    @post = Post.new(post_params) # params[:post])

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
  def edit
    @post = Post.find(params[:id])
  end
  def update
    @post = Post.find(params[:id])

    @post.title = params[:title]
    @post.body = params[:body]

    if @post.save
      redirect_to "/posts"
    else
      render :edit
    end
  end
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to "/posts"
  end

private
  def post_params
    params.require(:post).permit(:title, :body)
  end

end
