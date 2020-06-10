class Highlight < ApplicationRecord
  belongs_to :job, polymorphic: true

  default_scope { order(order: :asc) }
end
