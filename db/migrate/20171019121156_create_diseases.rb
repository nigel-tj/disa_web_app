class CreateDiseases < ActiveRecord::Migration[5.1]
  def change
    create_table :diseases do |t|
      t.string :name
      t.string :disease_type
      t.string :disease_category

      t.timestamps
    end
  end
end
