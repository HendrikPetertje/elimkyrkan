class Externalevent 
	require 'icalendar'
	# printables
	def self.thisweek 
		parse
	end

	# Private
	def fetchcalendar

	end
	def parse
		file_name = 'basic.ics'
		file_path = File.join(Rails.root, 'calendars', file_name)
		cal_file = File.open(file_path)

		cals = Icalendar.parse(cal_file)
		# cal = cals.first.events.first
	end
end
