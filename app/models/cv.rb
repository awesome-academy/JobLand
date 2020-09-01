class Cv < ApplicationRecord
  searchkick
  belongs_to :user
  has_many :cv_languages
  has_many :experiences
  has_many :educations, dependent: :destroy
  has_many :portfolios, dependent: :destroy
  has_many :cv_skills
  has_many :languages, through: :cv_languages
  has_many :skills, through: :cv_skills
  has_one_attached :image
  def search_data
    {
      user_fullname: user.fullname,
      user_languages: languages.all,
      user_skills: skills.all,
      user_schools: educations.all,
      experiences_name: experiences.all
    }
  end
end