class CreateManufacturers < ActiveRecord::Migration[6.0]
  def change
    create_table :manufacturers do |t|
      t.name :string
      t.string :location

      t.timestamps
    end
  end
end
