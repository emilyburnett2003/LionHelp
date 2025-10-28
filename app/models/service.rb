class Service < ActiveRecord::Base
  # Require these fields
  validates :title, :description, :poster, presence: true

  # Price must be a number >= 0
  validates :price, numericality: { greater_than_or_equal_to: 0 }
end