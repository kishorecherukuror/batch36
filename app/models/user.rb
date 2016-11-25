class User < ActiveRecord::Base
	validates :fname,:lname,:ful_name, presence: true
	validate :correct_age
	before_validation :concat_name

	def concat_name
		self.ful_name = "#{self.fname} " + "#{self.lname}"
	end

	def correct_age
		if self.age < 0 || self.age > 125
			errors.add(:age, "age should be between 0 to 125 years only")
		end
	end
end
