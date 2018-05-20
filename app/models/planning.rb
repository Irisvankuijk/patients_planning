class Planning < ApplicationRecord
	belongs_to :patient

	STATUSES = {
		"1" => "Open",
		"2" => "Postponed",
		"3" => "Scheduled",
		"4" => "Excluded",
		"5" => "Declined",
		"6" => "Interviewed"
	}

	INTERVIEWER = {
		"1" => "Stephanie Breedveld",
		"2" => "Odile Raat",
		"3" => "Iris van Kuijk"
	}

	def displayable_status
		return STATUSES[status]
	end

	def displayable_interviewer
		return INTERVIEWER[scheduled_interviewer]
	end
end
