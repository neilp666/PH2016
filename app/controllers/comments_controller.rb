class CommentsController < ApplicationController
  def create
    @link = Link.find(params[:link_id])
    @comment = @link.comments.create(comment_params)

    
    redirect_to link_path(@link, :flash => { :success => "Your Comment Has Been Saved!" }
  end


  private 

  def comment_params
    params.require(:comment).permit(:body, :user_id)
  end
end
