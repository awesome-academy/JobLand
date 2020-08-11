class Company < ApplicationRecord
	has_many :jobs
  has_one :user
end
