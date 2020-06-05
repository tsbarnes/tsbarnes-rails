class Highlight < ApplicationRecord
  belongs_to :job, polymorphic: true
end
