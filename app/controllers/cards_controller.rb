
class CardsController < ApplicationController
  def new(class_name)
    @card = Object.const_get(class_name).new
    @toukei = @card.build_toukei
    @shousai = @card.build_shousai
  end

  def index(class_name)
    @cards = Object.const_get(class_name).all
  end

  def edit
    get_card
  end

  def show
    get_card
  end

  def delete
    get_card
    @card.shousai.delete
    @card.destroy
  end

  private

  def get_card
    @card = Card.find(params[:id])
  end
end
