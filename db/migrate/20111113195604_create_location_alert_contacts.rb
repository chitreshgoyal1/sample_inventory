class CreateLocationAlertContacts < ActiveRecord::Migration
  def change
    create_table :location_alert_contacts, :id => false do |t|
      t.integer :location_id
      t.integer :user_id

      t.timestamps
    end
  end
end
