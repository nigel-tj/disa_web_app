class AddCommentToConditions < ActiveRecord::Migration[5.1]
  def change
    add_column :conditions, :comment, :string
  end
end
