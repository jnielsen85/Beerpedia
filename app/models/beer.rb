class Beer < ApplicationRecord
  belongs_to :style, :optional => true
  has_many :recipes
end
