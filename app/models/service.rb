class Service < ApplicationRecord
  has_one_attached :image

  has_many :service_categories
  has_many :categories, through: :service_categories

  default_scope { order(order: :asc, updated_at: :desc) }

  scope :latest, -> { order(updated_at: :desc).limit(6) }
end
