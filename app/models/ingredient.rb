class Ingredient < ActiveRecord::Base
  has_many :ingredients
  has_many :doses
  validates :name, presence: true, allow_nil: false, uniqueness: true
end
