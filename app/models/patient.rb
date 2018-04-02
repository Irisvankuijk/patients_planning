class Patient < ApplicationRecord
	has_many :interviews, dependent: :destroy
	has_one :planning, dependent: :destroy

	validates :name, :last_name, :date_birth, :gender, :main_condition, :location, presence: true
	def age
		return 0 if date_birth.nil?
	    age = Date.today.year - date_birth.year
    	age -= 1 if Date.today < date_birth + age.years
    	return age
	end

	def full_name
    "#{name} #{last_name}"
    end

end
