class CreateSensors < ActiveRecord::Migration
  def change
    create_table :sensors do |t|
      t.string :temperature

      t.timestamps
    end
  end
end
