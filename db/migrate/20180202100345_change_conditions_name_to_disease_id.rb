class ChangeConditionsNameToDiseaseId < ActiveRecord::Migration[5.1]
  def change
    rename_column :conditions, :name, :disease_id
    change_column :conditions, :name, 'integer USING CAST(disease_id AS integer)'
    
  end
end
