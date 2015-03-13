# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  start       :datetime
#  end         :datetime
#  changed     :datetime
#  summary     :string
#  desctiption :text
#  uid         :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Event < ActiveRecord::Base
	
end
