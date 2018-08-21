class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find.params[:id]
  end

  def edit
    @comment = Comment.find.params[:id]
  end

  def create
      @comment = Comment.new(comment_params)
       if @comment.save
         redirect_to picture_path(@comment.picture)
       else
         redirect_to picture_path(@comment.picture)
       end
    end

  private 
  def comment_params
    params.require(:comment).permit(:content, :user_id, :picture_id)
  end
end
