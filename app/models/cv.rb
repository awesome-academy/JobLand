class Cv < ApplicationRecord
  belongs_to :user
  has_many :cv_languages
  has_many :experiences
  has_many :portfolios, dependent: :destroy
end
