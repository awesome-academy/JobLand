class Experience < ApplicationRecord
  belongs_to :cv
  validates :title, presence: true, length: { maximum: 140 }
  validates :description, presence: true, length: { maximum: 500 }
end
