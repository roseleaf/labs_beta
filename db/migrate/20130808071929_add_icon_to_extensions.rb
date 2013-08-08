class AddIconToExtensions < ActiveRecord::Migration
  def change
    add_column :extensions, :icon, :string
  end
end
