class Banner < ActiveRecord::Base
  default_scope { order("#{table_name}.position ASC") }
  validates :ttle, :shorttitle, :photo, :link, :position, presence: true
end
