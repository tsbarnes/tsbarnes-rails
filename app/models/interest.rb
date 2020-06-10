class Interest < ApplicationRecord
  belongs_to :resume

  has_many :keywords, as: :owner, dependent: :destroy

  accepts_nested_attributes_for :keywords

  default_scope { order(order: :asc) }
end
