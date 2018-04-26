class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :location

      t.timestamps
    end
      add_reference :doctors, :city, index: true
      add_reference :patients, :city, index: true
      add_reference :appointments, :city, index: true
      remove_column :doctors, :postal_code
  end
end
