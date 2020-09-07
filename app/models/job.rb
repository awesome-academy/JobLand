class Job < ApplicationRecord
  enum time_work: { Fulltime: 0, Parttime: 1, All: 2 }
  enum sex: { Female: 0, Male: 1, All1: 2 }
	belongs_to :user
  belongs_to :company
  has_one_attached :images
	has_many :applyjobs, dependent: :destroy
	has_many :applying, through: :applyjobs, source: :user
  has_many :bookmarks, dependent: :destroy
  has_many :bookmarking, through: :bookmarks, source: :user
	scope :job_new, -> {order created_at: :desc}
	scope :job_slide, -> {where(slide:true).limit(5)}
  scope :job_Recommended, -> {order salary: :desc}
	scope :job_check, -> {where("DATE(created_at) = ?", Date.today)}
  scope :all_approved_false, -> { where approved: false }
  scope :all_approved_true, -> { where approved: true }

  sex = "select sex from jobs where id = ?"
  time_work="select time_work from jobs where id = ?"
  scope :job_similar, ->  (id){where("id <> ? and (sex IN (#{sex}) or sex = 2 or
    time_work IN (#{time_work}) or time_work= 2)
    and now() > DATE(from_date) and now()< DATE(to_date)",id,id,id).limit(4)}
  included do
     acts_as_url :fullname, url_attribute: :fullname, sync: true
  end

  def to_param
    [id, title.parameterize].join("-")
  end

  ransack :title, type: :string do
    arel_table[:title].lower
  end
end
