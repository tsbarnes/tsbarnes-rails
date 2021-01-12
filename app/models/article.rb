class Article < ApplicationRecord
  has_one_attached :header, dependent: :destroy

  has_many :article_categories
  has_many :categories, through: :article_categories

  default_scope { order(updated_at: :desc) }

  scope :latest, -> { order(updated_at: :desc).limit(6) }
end
