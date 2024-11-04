class CreateBuildings < ActiveRecord::Migration[7.2]
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :address
      t.integer :number_of_floors

      t.references :community, index: true

      t.timestamps
    end
  end
end
