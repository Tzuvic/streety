class RenameMenuToMenus < ActiveRecord::Migration[6.0]
  def change
    rename_table :menu, :menus
  end
end
