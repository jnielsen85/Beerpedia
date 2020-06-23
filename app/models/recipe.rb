class Recipe < ApplicationRecord
  belongs_to :user, :optional => true
  belongs_to :beer, :optional => true
  # has_many :types, :through => :beers
end
