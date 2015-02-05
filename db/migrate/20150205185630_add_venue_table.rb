class AddVenueTable < ActiveRecord::Migration
    def change
      create_table(:venues) { |t|
        t.column(:name, :string)

        t.timestamps
      }
  end
end
