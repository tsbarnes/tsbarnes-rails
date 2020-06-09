class Work < ApplicationRecord
  belongs_to :resume

  has_many :highlights, as: :job, dependent: :destroy

  accepts_nested_attributes_for :highlights
end
