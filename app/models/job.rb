class Job < ApplicationRecord
	belongs_to :user
	has_many :applyjobs, dependent: :destroy
	has_many :applying, through: :applyjobs, source: :user
  has_many :bookmarks, dependent: :destroy
  has_many :bookmarking, through: :bookmarks, source: :user
	scope :job_new, -> {order created_at: :desc}
	scope :job_slide, -> {where(slide:true).limit(5)}
  scope :all_approved_false, -> { where approved: false }
  scope :all_approved_true, -> { where approved: true }
  ransack :title, type: :string do
  arel_table[:title].lower
  end
end
