class IndexController < ApplicationController
  def home
    @gossips = Gossip.all
  end
  def team
  end
  def contact
  end
  def welcome
    @gossips = Gossip.all
  end
  
  def user
    @user = User.all.find_by(id:params[:id])
  end
end