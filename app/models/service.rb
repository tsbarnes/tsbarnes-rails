class Service < ApplicationRecord
  has_one_attached :image

  default_scope { order(order: :asc, updated_at: :desc) }
end
