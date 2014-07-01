
class Card < ActiveRecord::Base
  # attr_accessible :men, :kotae, :on
  has_and_belongs_to_many :tags
  has_one :toukei, dependent: :destroy
  validates_presence_of :men, :kotae
  validates_uniqueness_of :men
end
