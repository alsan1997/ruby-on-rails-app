class User < ApplicationRecord
	has_many :products
	validates :name, presence: true
	validates :email, presence: true, uniqueness: true
	validates :password, presence: true
	validates :password, confirmation: { case_sensitive: true }
end
