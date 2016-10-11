class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    @user = User.find(current_user.id)
    recent_posts = @user.posts.where('created_at': 1.hours.ago..Time.now)
    if recent_posts.count < 3
      @post = @user.posts.new(title: params[:post_title], url: params[:post_url])
      if !@post.save
        flash[:notice] = @post.errors.full_messages
      end
      redirect_to '/posts'
      return
    else
      flash[:notice] = ["You have reached the maximum limit for this hour."]
      redirect_to '/posts'
    end
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
  end
end
