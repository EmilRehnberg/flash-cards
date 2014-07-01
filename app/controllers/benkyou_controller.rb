class BenkyouController < ApplicationController
  def new
    @card = Card.all.shuffle.first
  end

  def index
  end

  def submit

    card = Card.find(params[:id])
    toukei = card.toukei
    tadashii_desu = params[:kaitou].eql?(card.kana)

    ActiveRecord::Base.transaction do
      toukei.update_attribute(:saikin_no_kotae, tadashii_desu)
      toukei.increment(:tameshi)
      toukei.increment(:tadashii) if tadashii_desu
      toukei.save!
    end

    redirect_to(new_benkyou_path)
  end
end

