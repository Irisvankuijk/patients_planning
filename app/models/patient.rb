class Patient < ApplicationRecord
	def age
	    age = Date.today.year - date_birth.year
    	age -= 1 if Date.today < date_birth + age.years
    	return age
	end
end
