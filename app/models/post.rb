class Post < ApplicationRecord
	has_many :comments
	validates :title, presence: true
	validates :description, presence: true
	validates :rated, presence: true
end
