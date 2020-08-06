class Job < ApplicationRecord
	belongs_to :company
	has_many :applyjobs, dependent: :destroy
end
