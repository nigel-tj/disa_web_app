class AddAreaToDiagnosedPatients < ActiveRecord::Migration[5.1]
  def change
    add_column :diagnosed_patients, :area, :text
  end
end
