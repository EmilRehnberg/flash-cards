
class Settei < ActiveRecord::Base
  belongs_to :kadai
  validates_presence_of :settei
  validates_uniqueness_of :kadai
end
