class CvLanguage < ApplicationRecord
  belongs_to :language
  belongs_to :cv
  validates :language_id, uniqueness: true
end
