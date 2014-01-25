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

    # .attributes는 instance의 모든 attribtue들의 상태를 확인할 수 있습니다.
    # @post의 id/ created_at / updated_at attribute들은 rails가 생성해줍니다.
    render text: "#{@post.attributes}"
  end
end
