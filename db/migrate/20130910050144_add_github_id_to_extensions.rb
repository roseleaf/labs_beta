class AddGithubIdToExtensions < ActiveRecord::Migration
  def change
    add_column :extensions, :github_id, :integer
  end
end
