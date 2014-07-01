
class Kadai < ActiveRecord::Base
  has_and_belongs_to_many :tags
  has_one :settei
end
