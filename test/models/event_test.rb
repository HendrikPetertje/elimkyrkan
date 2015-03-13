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

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
