class CreateHikingTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :hiking_trips do |t|
      t.references :trip, foriegn_key: true
      t.references :trail, foriegn_key: true

      t.timestamps
    end
  end
end
