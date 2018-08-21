class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find(params[:id])
    @comment = Comment.new(picture_id: @picture.id, user_id: 1)
    @comments = @picture.comments
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def create
    @picture = Picture.new(picture_params)
    if @picture.valid?
      @picture.save
      redirect_to pictures_path
      # redirect_to picture_path(@picture)
    else
      redirect_to new_picture_path
      # render :new
    end
  end


  def destroy
  end


  private

  def picture_params
    params.require(:picture).permit(:image_url, :title, :user_id)
  end

end
