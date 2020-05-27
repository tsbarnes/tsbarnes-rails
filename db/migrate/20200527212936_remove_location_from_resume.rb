class RemoveLocationFromResume < ActiveRecord::Migration[6.0]
  def change
    remove_reference :resumes, :location, foreign_key: true
  end
end
