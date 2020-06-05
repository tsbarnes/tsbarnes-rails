class Education < ApplicationRecord
  before_destroy :destroy_dependents

  belongs_to :resume

  has_many :courses

  def destroy_dependents
    self.courses.destroy_all
  end
end
