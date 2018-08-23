class PicturesController < ApplicationController
  def index
    @pictures = Picture.all.order('created_at DESC')
  end

  def show
    @picture = Picture.find(params[:id])
    @comment = Comment.new
    @comment.user = current_user
    @comment.picture = @picture
    @comments = @picture.comments
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def new
    @picture = Picture.new
  end

  def create
    # if params[:picture][:create_tag][:name]
    # then create the tag and redirect back to the picture new page
    # else if that doesn't exist
    # create the picture with the selected tag (or display error message if one is not selected)

    if params[:picture][:create_tag][:name]
        byebug
      @tag = Tag.create(tag_params)
      redirect_to new_picture_path
    else
    @picture = Picture.new(picture_params)
    @picture.user_id = current_user.id
      if @picture.save
        redirect_to picture_path(@picture)
      else
        redirect_to new_picture_path
      end
    end

  end


  def destroy
    Picture.find(params[:id]).destroy
    redirect_to user_path(current_user)
  end


  private

  def picture_params
    params.require(:picture).permit(:title, :user_id, :image_url, :image, tag_ids:[])
  end

end
