class CvSkill < ApplicationRecord
  belongs_to :skill
  belongs_to :cv
  validates :skill, uniqueness: { scope: :cv }
end
