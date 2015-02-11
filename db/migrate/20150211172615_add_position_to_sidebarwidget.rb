class AddPositionToSidebarwidget < ActiveRecord::Migration
  def change
    add_column :sidebarwidgets, :position, :integer
  end
end
