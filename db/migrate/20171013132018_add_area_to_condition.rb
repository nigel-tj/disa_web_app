class AddAreaToCondition < ActiveRecord::Migration[5.1]
  def change
    add_column :conditions, :area, :text
  end
end
