
class TangoShousai < ActiveRecord::Base
  # attr_accessible :kana
  belongs_to :tango, :foreign_key => :card_id
  validates_presence_of :kana
end
