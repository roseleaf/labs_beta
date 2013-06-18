class ChangeNotesColumnType < ActiveRecord::Migration
  def up
  	change_column :extensions, :notes, :text
  end
end
