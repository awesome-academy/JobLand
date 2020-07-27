class Cv < ApplicationRecord
  has_one :user
  has_many :cv_languages
end
