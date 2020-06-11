class Article < ApplicationRecord
  has_one_attached :header, dependent: :destroy
end
