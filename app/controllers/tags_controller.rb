
class TagsController < ApplicationController

  def create
    Tag.create(tag_params)
    redirect_to :back
  end

  def index
    @tags = Tag.all
  end

  def new
    @tag = Tag.new
  end

  private

  def tag_params
    params.require(:tag).permit(:namae)
  end
end
