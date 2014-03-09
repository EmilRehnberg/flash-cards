
class Tag < ActiveRecord::Base
  has_and_belongs_to_many :cards
  validates_presence_of :namae
end
