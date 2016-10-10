class CommentsController < ApplicationController
  def create

    if !current_user
      flash[:errors] = ["You must be logged in"]
    else
      @post = Post.find(params[:post_id])
      @comment = @post.comments.new(comment_params)
      @comment.user_id = current_user.id
      if @comment.save
        flash[:notice] = ["succcess"]
      else
        flash[:notice] = @comment.errors.full_messages
        end
    end
    redirect_to "/posts/#{params[:post_id]}"
  end

  private
    def comment_params
      params.require(:comment).permit(:content, :post_id)
    end
end
