class CvSkill < ApplicationRecord
  belongs_to :skill
  belongs_to :cv
  validates :skill_id, uniqueness: true
end
