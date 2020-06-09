class Volunteer < ApplicationRecord
  belongs_to :resume

  has_many :highlights, as: :job, dependent: :destroy
  has_many :job_projects, as: :job
  has_many :projects, through: :job_projects, as: :job

  accepts_nested_attributes_for :highlights
end
