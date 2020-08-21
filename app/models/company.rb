class Company < ApplicationRecord
  has_many :jobs
  belongs_to :user, optional: true
  has_many :member, dependent: :destroy
  has_many :membering, through: :member, source: :user
  has_one_attached :image
  validates :image,content_type: { in: %w[image/jpeg image/gif image/png],
             message: "must be a valid image format" },
             size:{ less_than: 5.megabytes, message: "should be less than 5MB" }
  def display_image
    image.variant(resize_to_limit: [1140, 500])
  end

end
