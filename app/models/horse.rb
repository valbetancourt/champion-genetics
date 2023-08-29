class Horse < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  CATEGORY = ["Polo", "Show jumping", "Race horses", "Western", "Trail horses", "Dressage"]
end
