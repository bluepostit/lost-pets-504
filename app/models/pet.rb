class Pet < ApplicationRecord
  validates :name, presence: true
  validates :species, presence: true, inclusion: {
    in: %w[dog cat rabbit bird octopus hamster horse]
  }
  validates :color, presence: true
  validates :date_found, presence: true

  def found_days_ago
    (Date.today - date_found).to_i
  end
end
