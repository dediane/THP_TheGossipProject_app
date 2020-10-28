class GossipsController < ApplicationController
  def new

  end

  def create
    @gossip = Gossip.new(title:params[:title], content:params[:content], user:User.find_by(id: 7))
    if @gossip.save
      flash[:notice] = "New gossip created! Congrats!!!"
      redirect_to root_path
    else 
      flash.now[:alert] = "Error while writting the gossip!  :("
      render new_gossip_path
    end
  end
  
  def show
    @gossip = Gossip.all.find_by(id:params[:id])
  end

  def update
  end

  def destroy
  end
end