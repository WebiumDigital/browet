class RenameLinkListToMenu < ActiveRecord::Migration
  def change
    rename_table :link_lists, :menus
  end
end
