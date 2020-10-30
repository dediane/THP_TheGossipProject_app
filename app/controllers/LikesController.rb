class LikesController < ApplicationController

  def new
    @like = Like.new
  end

  def create
    @like = Like.new(gossip_id: params[:gossip_id], user:current_user)
    if @like.save
      redirect_to gossip_path(params[:gossip_id])
    else
      redirect_to gossip_path(params[:gossip_id])
    end
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy
    redirect_to gossip_path(params[:gossip_id])
  end

end
