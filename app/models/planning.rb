class Planning < ApplicationRecord

	STATUSES = {
		"1" => "Open",
		"2" => "Postponed",
		"3" => "Scheduled",
		"4" => "Excluded",
		"5" => "Declined",
		"6" => "Interviewed"
	}

	belongs_to :patient

	validate :not_past_date

	def not_past_date
  	if self.scheduled_datetime.present? && self.scheduled_datetime.past?
    	errors.add(:scheduled_datetime, 'can not be in the past')
  	end
	end

	def displayable_status
		return STATUSES[status]
	end

end
