class Beer < ApplicationRecord
  belongs_to :brewery, :optional => true
  belongs_to :type, :optional => true
  has_and_belongs_to_many :recipes
end
