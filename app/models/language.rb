class Language < ApplicationRecord
  belongs_to :resume

  default_scope { order(order: :asc) }
end
