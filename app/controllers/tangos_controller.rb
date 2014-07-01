
class TangosController < CardsController
  def new
    super("Tango")
  end

  def index
    super("Tango")
  end

  def create
    if @card = Tango.create(tango_params)
      ActiveRecord::Base.transaction do
        @card.save!
        @card.tags << Tag.find(tango_params.fetch(:tag_ids))
        @card.create_shousai(shousai_params)
        @card.create_toukei()
      end
    end
    redirect_to :back
  end

  private

  def tango_params
    params.require(:tango).permit(:men, :kotae, :on, :tag_ids => [])
  end

  def shousai_params
    params.fetch(:tango).require(:tango_shousai).permit(:kana)
  end
end
