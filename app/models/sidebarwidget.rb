class Sidebarwidget < ActiveRecord::Base
  validates :title, :content, presence: true
end
