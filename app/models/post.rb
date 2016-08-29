class Post < ApplicationRecord
	validates :feedback, presence: true
end
