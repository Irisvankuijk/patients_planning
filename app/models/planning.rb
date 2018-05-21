class Planning < ApplicationRecord
	belongs_to :patient

	#validates :postponed_reason, presence: true

	STATUSES = {
		"1" => "Open",
		"2" => "Postponed",
		"3" => "Scheduled",
		"4" => "Excluded",
		"5" => "Declined",
		"6" => "Interviewed"
	}

	def displayable_status
		return STATUSES[status]
	end

end
