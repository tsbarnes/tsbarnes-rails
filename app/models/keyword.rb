class Keyword < ApplicationRecord
  belongs_to :owner, polymorphic: true

  default_scope { order(order: :asc) }
end
