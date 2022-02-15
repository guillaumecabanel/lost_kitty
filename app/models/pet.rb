class Pet < ApplicationRecord
  validates :species, inclusion: { in: %w[cat dog horse bird turtle fish lama],
    message: "%{value} is not supported by our services" }
  validates :name, presence: true
end
