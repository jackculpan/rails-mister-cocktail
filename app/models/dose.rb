class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail
  validates :cocktail_id, presence: true, uniqueness: { scope: :ingredient_id}
  validates :ingredient_id, presence: true
  validates :description, presence: true
end
