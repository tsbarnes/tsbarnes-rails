class JobProject < ApplicationRecord
  belongs_to :job, polymorphic: true
  belongs_to :project

  validates :job, presence: true

  def job_identifier
    return "#{self.job.class.to_s}-#{self.job.id}" if job.present?
    return nil
  end

  def job_identifier=(job_data)
    if job_data.present?
      job_data = job_data.split('-')
      self.job_type = job_data[0]
      self.job_id = job_data[1]
    end
  end
end
