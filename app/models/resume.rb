class Resume < ApplicationRecord
  belongs_to :location

  has_many :profiles
  has_many :educations
  has_many :works
  has_many :volunteers
  has_many :skills
  has_many :languages
  has_many :interests
end
