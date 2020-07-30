class Cv < ApplicationRecord
  has_one :user
  has_many :cv_languages
  has_many :experiences
end
