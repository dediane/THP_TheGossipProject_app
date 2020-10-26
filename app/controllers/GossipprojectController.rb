class GossipprojectController < ApplicationController
  def home
    @gossips = Gossip.all
  end
  def team
  end
  def contact
  end
  def welcome
  end
  def gossip
    @gossip = Gossip.all.find_by(id:params[:id])
  end
  def user
    @user = User.all.find_by(id:params[:id])
  end
end