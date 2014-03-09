
class Tango < Card
  has_one :shousai, class_name: "TangoShousai",
                    foreign_key: :card_id,
                    inverse_of: :tango,
                    validate: true,
                    autosave: true,
                    dependent: :destroy
  delegate :kana, to: :shousai
  accepts_nested_attributes_for :shousai, :toukei, allow_destroy: true
end
