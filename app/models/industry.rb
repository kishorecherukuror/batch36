class Industry < ActiveRecord::Base
	has_and_belongs_to_many :sectors
	accepts_nested_attributes_for :sectors, reject_if: proc { |attributes| attributes['name'].blank? } 
end
