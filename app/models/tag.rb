
class Tag < ActiveRecord::Base
  has_and_belongs_to_many :cards
  has_and_belongs_to_many :kadais
  validates_presence_of :namae
end
