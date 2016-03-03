class Dose < ActiveRecord::Base
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true, allow_nil: false
  validates :ingredient, presence: true, allow_nil: false
  validates :cocktail, presence: true, allow_nil: false
  validates_uniqueness_of :ingredient_id, :scope => [:cocktail_id]
end
