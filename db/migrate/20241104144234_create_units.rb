class CreateUnits < ActiveRecord::Migration[7.2]
  def change
    create_table :units do |t|
      t.string :number
      t.integer :floor_number

      t.references :building, index: true
      t.timestamps
    end
  end
end
