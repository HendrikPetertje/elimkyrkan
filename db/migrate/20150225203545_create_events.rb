class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :start
      t.datetime :end
      t.datetime :changed
      t.string :summary
      t.text :desctiption
      t.string :uid

      t.timestamps null: false
    end
  end
end
