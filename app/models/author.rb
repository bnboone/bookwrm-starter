class Author < ApplicationRecord
	validates_presence_of :first_name, :last_name
	scope :alphabetical, -> { order(last_name: :asc) }
	has_many :books 
	def full_name 
		"#{first_name} #{last_name}"
	end
end
