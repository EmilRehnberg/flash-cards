class BenkyouController < ApplicationController
  def new
    @card = Card.all.shuffle.first
  end

  def index
  end

  def submit
    card = Card.find(params[:id])
    toukei = card.toukei
    tadashii? = params[:kaitou].eq?(card.kana)
    ActiveRecord::Base.transaction do
      toukei.update_attribute(:saikin_no_kotae, toukei)
      toukei.increment(:tameshi)
      toukei.increment(:tadashii) if tadashii?
    end
  end
end

