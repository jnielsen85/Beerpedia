class Beer < ApplicationRecord
  belongs_to :brewery, :optional => true
  has_and_belongs_to_many :types
  has_and_belongs_to_many :recipes 
end
