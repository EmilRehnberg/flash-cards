
class Kadai < ActiveRecord::Base
  has_many :tags
  has_one :settei
end
