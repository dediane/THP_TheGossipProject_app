class CitiesController < ApplicationController

  def show
    @city = City.all.find_by(id:params[:id])
    @gossips = Gossip.all
  end
end