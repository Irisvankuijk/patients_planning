class Planning < ApplicationRecord
	belongs_to :patient

	validate :not_past_date

	def not_past_date
  	if self.scheduled_datetime.past?
    errors.add(:scheduled_datetime, 'can not be in the past')
  	end
	end


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
