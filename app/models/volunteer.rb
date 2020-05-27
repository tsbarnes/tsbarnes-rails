class Volunteer < ApplicationRecord
  belongs_to :resume

  has_many :highlights, as: :job, dependent: :destroy
end
