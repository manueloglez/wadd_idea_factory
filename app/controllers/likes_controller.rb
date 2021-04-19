class LikesController < ApplicationController
  before_action :authenticate_user!

  def create
    idea = Idea.find params[:idea_id]
    like = Like.new(user: current_user, idea: idea)

    if like.save
      flash[:success] = "idea liked!"
    else
      flash[:danger] = "Already liked"
    end

    redirect_to root_path
  end

  def destroy 
    idea = Idea.find params[:idea_id]
    like = Like.find params[:id]
    like.destroy
    flash[:secondary] = "idea unliked"

    redirect_to root_path
  end
end
