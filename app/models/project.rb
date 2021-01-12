class Project < ApplicationRecord
  has_one_attached :image

  has_many :job_projects
  
  has_many :project_categories
  has_many :categories, through: :project_categories

  default_scope { order(order: :asc, updated_at: :desc) }

  scope :latest, -> { order(updated_at: :desc).limit(6) }
end
