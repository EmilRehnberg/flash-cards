
class TangosController < CardsController
  def new
    super("Tango")
  end

  def index
    super("Tango")
  end

  def create
    if @card = Tango.create(tango_params)
      @card.create_shousai(shousai_params)
      @card.create_toukei()
    end
    redirect_to :back
  end

  private

  def tango_params
    params.require(:tango).permit(:men, :kotae, :on, :tags)
  end

  def shousai_params
    params.fetch(:tango).require(:tango_shousai).permit(:kana)
  end
end
