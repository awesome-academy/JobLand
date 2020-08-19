class Applyjob < ApplicationRecord
  belongs_to :job
  belongs_to :user
  validates :job_id, presence: true
  validates :user_id, presence: true
  scope :appliedjob, -> (job_id, user_id){where("job_id = ? AND user_id = ?", job_id, user_id)}
  scope :interview, -> {where apply_status: 1}
  enum apply_status: { Waiting: 0, Interview: 1, Reject: 2 }
end
