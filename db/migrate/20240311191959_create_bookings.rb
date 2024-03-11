class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.date :date
      t.time :beginning_time
      t.time :endimg_time

      t.timestamps
    end
  end
end
