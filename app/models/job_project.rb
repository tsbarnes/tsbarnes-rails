class JobProject < ApplicationRecord
  belongs_to :job, polymorphic: true
  belongs_to :project
end
