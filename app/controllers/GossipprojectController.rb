class GossipprojectController < ApplicationController
  def home
    @gossip = Gossip.all
  end
  def team
  end
  def contact
  end
  def welcome
  end
  def gossip
  end
end