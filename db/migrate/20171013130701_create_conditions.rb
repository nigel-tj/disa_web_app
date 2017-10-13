class CreateConditions < ActiveRecord::Migration[5.1]
  def change
    create_table :conditions do |t|
      t.string :name
      t.string :gender
      t.integer :age
      t.float :latitude
      t.float :longitude
      t.string :status

      t.timestamps
    end
  end
end
