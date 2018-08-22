class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find(params[:id])
    @comment = Comment.new
    @comments = @picture.comments
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    @picture.user_id = current_user.id
    if @picture.save
      redirect_to picture_path(@picture)
    else
      redirect_to new_picture_path
    end
  end


  def destroy
  end


  private

  def picture_params
    params.require(:picture).permit(:title, :user_id, :image_url)
  end

end
