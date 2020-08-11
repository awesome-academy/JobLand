class Job < ApplicationRecord
	has_many :applyjobs, dependent: :destroy
	has_many :applying, through: :applyjobs, source: :user
	belongs_to :user
	scope :job_new, -> {order created_at: :desc}
	scope :job_slide, -> {where(slide:true).limit(5)}
  scope :all_approved_false, -> { where approved: false }
end
