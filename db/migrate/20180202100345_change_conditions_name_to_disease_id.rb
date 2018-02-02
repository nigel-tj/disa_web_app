class ChangeConditionsNameToDiseaseId < ActiveRecord::Migration[5.1]
  def change
    rename_column :conditions, :name, :disease_id
    change_column :conditions, :disease_id, :integer
    
  end
end
