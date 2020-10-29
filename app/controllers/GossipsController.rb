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
    @comment = Comment.new
    @comment.gossip_id = @gossip.id
  end

  def edit
    @gossip = Gossip.all.find_by(id:params[:id])
  end

  def update
    @gossip = Gossip.all.find_by(id:params[:id])
    if @gossip.update(post_params)
      flash[:notice] = "Gossip has been updated :)"
      redirect_to @gossip
    end
  end

  def destroy
    @gossip = Gossip.all.find_by(id:params[:id])
    @gossip.destroy
    flash[:notice] = "Gossip has been deleted :)"
    redirect_to root_path
  end
    
  def post_params
    params.require(:gossip).permit(:title, :content)
  end

end