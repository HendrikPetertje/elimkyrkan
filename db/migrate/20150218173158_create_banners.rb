class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.string :title
      t.string :shorttitle
      t.string :photo
      t.string :link

      t.timestamps null: false
    end
  end
end
