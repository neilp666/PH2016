class CommentsController < ApplicationController
  def create
    @link = Link.find(params[:link_id])
    @comment = @link.comments.new(comment_params)
    @comment.user_id = current.user.user_id
    @comment.save 
    
    redirect_to link_path(@link, :flash => { :success => "Your Comment Has Been Saved!" }
  end


  private 

  def comment_params
    params.require(:comment).permit(:body)
  end
end
