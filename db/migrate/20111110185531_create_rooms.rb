class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :url_id

      t.timestamps
    end
  end
end
