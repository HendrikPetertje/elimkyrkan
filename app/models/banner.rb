# == Schema Information
#
# Table name: banners
#
#  id         :integer          not null, primary key
#  title      :string
#  shorttitle :string
#  photo      :string
#  link       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  position   :integer
#

class Banner < ActiveRecord::Base
  default_scope { order("#{table_name}.position ASC") }
  validates :ttle, :shorttitle, :photo, :link, :position, presence: true
end
