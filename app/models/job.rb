class Job < ApplicationRecord
	belongs_to :company
	has_many :applyjobs, dependent: :destroy
	has_many :users, through: :applyjobs
end
