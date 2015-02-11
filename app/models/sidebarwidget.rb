class Sidebarwidget < ActiveRecord::Base
  default_scope { order("#{self.table_name}.position ASC") }
  validates :title, :content, presence: true

end
