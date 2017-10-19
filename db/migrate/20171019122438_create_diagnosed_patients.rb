class CreateDiagnosedPatients < ActiveRecord::Migration[5.1]
  def change
    create_table :diagnosed_patients do |t|
      t.string :gender
      t.integer :age
      t.float :latitude
      t.float :longitude
      t.string :status
      t.references :disease, foreign_key: true

      t.timestamps
    end
  end
end
