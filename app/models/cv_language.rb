class CvLanguage < ApplicationRecord
  belongs_to :language
  belongs_to :cv
  validates :language, uniqueness: { scope: :cv }
end
