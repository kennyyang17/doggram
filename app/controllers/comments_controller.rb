class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find.params[:id]
  end

  def new
    @comment = Comment.new
  end

  def edit
    @comment = Comment.find.params[:id]
  end

  def create
      @comment = Comment.new(comment_params)
      @comment.user_id = current_user.id
       if @comment.save
         redirect_to picture_path(@comment.picture)
       else
         redirect_to pictures_path
       end
    end

    def destroy
      @comment = Comment.find(params[:id])
      @picture = @comment.picture
      @comment.destroy
      redirect_to picture_path(@picture)
    end

  private
  def comment_params
    params.require(:comment).permit(:content, :user_id, :picture_id)
  end
end
