class CommentsController < ApplicationController
  def create
    comment = Comment.new(commenter: params[:ct],
                          body: params[:bd],
                          post_id: params[:post_id])
    if comment.save
      puts "########################"
      puts comment.attributes
      puts "########################"
    end

    data = {
      ctt: comment.commenter,
      bdd: comment.body
    }

    render json: data.to_json
  end
end
