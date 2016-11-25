class Product < ActiveRecord::Base
	validates :quatity,:price , presence: true
	validates :name, length: { minimum: 3 }
	validates :name, uniqueness: true
end
