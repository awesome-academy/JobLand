require 'elasticsearch/model'
class Cv < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  belongs_to :user
  has_many :cv_languages
  has_many :experiences
  has_many :educations, dependent: :destroy
  has_many :portfolios, dependent: :destroy
  has_many :cv_skills
  has_many :userlanguages, through: :cv_languages, source: :language
  has_many :userskills, through: :cv_skills, source: :skill

  def as_indexed_json(options = {})
    self.as_json(
      include: {
        user: {only: :fullname},
        userlanguages: { only: :name },
        userskills: { only: :name },
        educations: { only: [:school, :degree] },
        experiences: { only: [:title, :name] }
      }
    )
  end  
end
Cv.__elasticsearch__.create_index! force: true
Cv.__elasticsearch__.refresh_index!
Cv.import