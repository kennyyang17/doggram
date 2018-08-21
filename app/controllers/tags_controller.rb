class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def new
   @tag = Tag.new
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def edit
    @tag = Tag.find(params[:id])
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      redirect_to show_picture_path(@tag)
    else
      redirect_to show_picture_path(@tag)
    end
  end

  def update
  end

  def destroy
  end

   private

  def tag_params
    params.require(:tag).permit(:name)
  end
end
