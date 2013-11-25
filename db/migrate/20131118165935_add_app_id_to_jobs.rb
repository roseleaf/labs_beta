class AddAppIdToJobs < ActiveRecord::Migration
  def change
  	add_column :jobs, :app_id, :string
  end
end
