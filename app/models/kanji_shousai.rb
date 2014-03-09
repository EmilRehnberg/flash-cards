
class KanjiShousai < ActiveRecord::Base
  # attr_accessible :onyomi, :kunyomi, :imi, :bushu
  belongs_to :kanji, :foreign_key => :card_id
  validates_presence_of :imi
end
