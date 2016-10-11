class VotesController < ApplicationController
  def create
    Vote.create(user: current_user, post: Post.find(params[:post_id]))
    redirect_to '/posts'
  end
  # have guest users votes stored in an array in sessions
  def create_guest_vote
    user = current_or_guest_user
    if user.first_name == "guest"
      if session[:votes].nil?
        session[:votes] = [params[:post_id]]
      else
        session[:votes].push(params[:post_id])
      end
    end
    redirect_to '/posts'
  end

end

