class Project < ApplicationRecord
  has_one_attached :image

  has_many :job_projects
end
