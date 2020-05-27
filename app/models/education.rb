class Education < ApplicationRecord
  belongs_to :resume

  has_many :courses
end
