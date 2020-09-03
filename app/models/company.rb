class Company < ApplicationRecord
  searchkick word_start: [:full_name], suggest: [:full_name]
  has_many :jobs
  belongs_to :user, optional: true
  has_many :members, dependent: :destroy
  has_many :users, through: :members, source: :user
  has_one :payment
  has_many_attached :images, dependent: :destroy
  validates :images,content_type: { in: %w[image/jpeg image/gif image/png],
             message: "must be a valid image format" },
             size:{ less_than: 5.megabytes, message: "should be less than 5MB" }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                                    format: { with: VALID_EMAIL_REGEX },
                                    uniqueness: true
  validates :full_name, :address, :phone, :link, :total, presence: true
  validates :descr, presence: true, length: { minimum: 30 }
  def search_data
     as_json only: [:full_name, :address, :link]
    {
      full_name: full_name,
      address: address,
      link: link
    }
  end

  included do
    acts_as_url :full_name, url_attribute: :full_name, sync: true
  end

  def to_param
    "#{id}/#{full_name}"
  end
end
