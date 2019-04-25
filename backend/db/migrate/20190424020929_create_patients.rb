class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.references :doctor, index: true
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :status
      t.text :dpms_json

      t.timestamps
    end
  end
end
