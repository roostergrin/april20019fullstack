class CreateDoctors < ActiveRecord::Migration[5.1]
  def change
    create_table :doctors do |t|
      t.references :practice, index: true
      t.string :first_name
      t.string :last_name
      t.string :title

      t.timestamps
    end
  end
end
