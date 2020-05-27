class Skill < ApplicationRecord
  belongs_to :resume

  has_many :keywords, as: :owner, dependent: :destroy
end
