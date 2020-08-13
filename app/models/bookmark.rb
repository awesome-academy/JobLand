class Bookmark < ApplicationRecord
  belongs_to :job
  belongs_to :user
  validates :job_id, presence: true
  validates :user_id, presence: true
  scope :bookmarked, -> (job_id, user_id){where("job_id = ? AND user_id = ?", job_id, user_id)}
end
