class Recipe < ApplicationRecord
  belongs_to :user, :optional => true
  has_and_belongs_to_many :beers
  has_many :types, :through => :beers
end
