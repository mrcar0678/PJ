class CreateEventRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :event_records do |t|
      t.string :event_id

      t.timestamps
    end
    add_index :event_records, :event_id
  end
end
