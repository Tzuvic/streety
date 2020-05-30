class RemoveNameFromMenu < ActiveRecord::Migration[6.0]
  def change
    remove_column :menu, :name
  end
end
