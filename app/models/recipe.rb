class Recipe < ApplicationRecord
  # belongs_to :user, :optional => true
  belongs_to :brewer, :optional => true
  belongs_to :style, :optional => true
  # has_many :types, :through => :beers
end
