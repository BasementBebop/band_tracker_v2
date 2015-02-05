class AddBandTable < ActiveRecord::Migration
  def change
    create_table(:bands) { |t|
      t.column(:name, :string)

      t.timestamps
    }
  end
end
