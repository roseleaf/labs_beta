class CreateExtensionsTable < ActiveRecord::Migration
  def up
    create_table :extensions do |t|
      t.string :name
      t.string :download_url
      t.string :short_description
      t.string :notes
      t.string :category
      t.string :interface
      t.string :author_type
    end
  end

  def down
    drop_table :extensions
  end
end