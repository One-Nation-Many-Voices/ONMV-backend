class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :representative_name
      t.string :location
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip_code
      t.string :event_type
      t.date :date
      t.time :time
      t.string :political_party
      t.string :district
      t.string :description

      t.timestamps
    end
  end
end
