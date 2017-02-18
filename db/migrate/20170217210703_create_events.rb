class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :rep_first_name
      t.string :rep_last_name
      t.string :location
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip_code
      t.string :event_type
      t.string :date
      t.string :time
      t.string :political_party
      t.string :district
      t.string :description

      t.timestamps
    end
  end
end
