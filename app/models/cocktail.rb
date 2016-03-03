class Cocktail < ActiveRecord::Base
  has_many :ingredients, through: :doses
  has_many :doses, dependent: :destroy
  validates :name, presence: true, allow_nil: false, uniqueness: true
end
