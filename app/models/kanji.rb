
class Kanji < Card
  attr_accessible :onyomi, :kunyomi, :imi, :bushu
  has_one :shousai, class_name: "KanjiShousai",
                    foreign_key: :card_id,
                    inverse_of: :kanji,
                    validate: true,
                    autosave: true
  delegate :onyomi, :kunyomi, :imi, :bushu,
    to: :shousai
end
