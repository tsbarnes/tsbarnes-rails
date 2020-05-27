class Keyword < ApplicationRecord
  belongs_to :owner, polymorphic: true
end
