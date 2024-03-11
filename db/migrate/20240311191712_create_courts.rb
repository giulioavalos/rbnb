class CreateCourts < ActiveRecord::Migration[7.1]
  def change
    create_table :courts do |t|
      t.string :name
      t.string :address
      t.string :description
      t.time :opening_hour
      t.time :closing_hour
      t.boolean :indoor
      t.float :price_hour

      t.timestamps
    end
  end
end
