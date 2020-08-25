require 'elasticsearch/model'
class Company < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  has_many :jobs
  belongs_to :user, optional: true
  has_many :members, dependent: :destroy
  has_many :users, through: :members, source: :user
  has_one_attached :image
  has_one :payment
  validates :image,content_type: { in: %w[image/jpeg image/gif image/png],
             message: "must be a valid image format" },
             size:{ less_than: 5.megabytes, message: "should be less than 5MB" }
  def display_image
    image.variant(resize_to_limit: [1140, 1000])
  end
  def as_indexed_json(options = {})
    self.as_json(
      only: [:full_name, :address, :link]
    )
  end
end
Company.__elasticsearch__.create_index! force: true
Company.__elasticsearch__.refresh_index!
Company.import
