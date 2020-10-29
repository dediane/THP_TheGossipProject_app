class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.gossip_id = params[:gossip_id]
    if @comment.save
      flash[:notice] = "Comment added"
    end
    redirect_to gossip_path(@comment.gossip)
  end

  def edit
    @comment = Comment.find(params[:id])
    @gossip = Gossip.find(params[:gossip_id])
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      flash[:notice] = "Comment has been updated :)"
    end 
    redirect_to gossip_path(@comment.gossip)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to gossip_path(@comment.gossip, @comment)
  end

  def comment_params
    params.require(:comment).permit(:author, :content)
  end
end