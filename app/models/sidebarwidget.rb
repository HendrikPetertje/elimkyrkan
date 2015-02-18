# == Schema Information
#
# Table name: sidebarwidgets
#
#  id         :integer          not null, primary key
#  title      :string
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  position   :integer
#

class Sidebarwidget < ActiveRecord::Base
  default_scope { order("#{self.table_name}.position ASC") }
  validates :title, :content, presence: true

end
