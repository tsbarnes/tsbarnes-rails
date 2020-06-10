class Course < ApplicationRecord
  belongs_to :education

  default_scope { order(order: :asc) }
end
