class Category < ApplicationRecord
  has_many :article_categories
  has_many :articles, through: :article_categories

  has_many :project_categories
  has_many :projects, through: :project_categories

  has_many :service_categories
  has_many :services, through: :service_categories
end
