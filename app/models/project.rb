class Project < ApplicationRecord
  has_one_attached :image

  has_many :job_projects

  default_scope { order(order: :asc) }

  scope :latest, -> { order(updated_at: :desc).limit(3) }
end
