class JobProject < ApplicationRecord
  belongs_to :job
  belongs_to :project
end
