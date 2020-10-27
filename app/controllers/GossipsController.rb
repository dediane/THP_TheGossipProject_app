class GossipsController < ApplicationController
  def new
    
  end

  def create

  end
  
  def show
    @gossip = Gossip.all.find_by(id:params[:id])
  end
end