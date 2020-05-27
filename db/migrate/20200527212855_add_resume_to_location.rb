class AddResumeToLocation < ActiveRecord::Migration[6.0]
  def change
    add_reference :locations, :resume, null: false, foreign_key: true
  end
end
