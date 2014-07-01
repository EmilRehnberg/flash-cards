
class KadaiController < ApplicationController
  def create
    if @kadai = Kadai.create(kadai_params)
      @kadai.tags << Kadai.find(tango_params.fetch(:tag_ids).reject!(&:blank?))
      @kadai.create_settei(settei_params)
    end
  end

  def index
    @kadaitachi = Kadai.all
  end

  def new
    @kadai = Kadai.new
    @settei = @kadai.build_settei
  end

  private

  def kadai_params
    params.require(:kadai).permit(:namae)
  end

  def settei_params
    params.fetch(:kadai).require(:kadai_settei).permit(:reminder, :on_wo_purei_suru)
  end
end
