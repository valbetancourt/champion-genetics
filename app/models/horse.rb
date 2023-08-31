class Horse < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  CATEGORY = ["Polo", "Show jumping", "Race horses", "Western", "Trail horses", "Dressage"]

  include PgSearch::Model
  pg_search_scope :search_by_name_and_category,
  against: [ :name, :category ],
  using: {
  tsearch: { prefix: true }
  }
end
