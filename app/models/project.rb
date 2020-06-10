class Project < ApplicationRecord
  has_one_attached :image

  has_many :job_projects

  default_scope { order(order: :asc) }
end
