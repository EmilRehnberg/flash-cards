
class Toukei < ActiveRecord::Base
  belongs_to :card
  validates_presence_of :saikin_no_kotae, :tadashii, :tameshi
  validates_uniqueness_of :card
end
