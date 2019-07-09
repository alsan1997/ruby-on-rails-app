class Todolist < ApplicationRecord
	validates :tdl, presence: true, length: { minimum: 3 }
end
