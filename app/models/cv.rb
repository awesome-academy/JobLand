class Cv < ApplicationRecord
  belongs_to :user
  has_many :cv_languages
  has_many :experiences
  has_many :educations
  has_many :portfolios, dependent: :destroy
  has_many :cv_skills
end
