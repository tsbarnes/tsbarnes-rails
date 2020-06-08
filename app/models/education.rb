class Education < ApplicationRecord
  before_destroy :destroy_dependents

  belongs_to :resume

  has_many :courses

  accepts_nested_attributes_for :courses

  def destroy_dependents
    self.courses.destroy_all
  end
end
