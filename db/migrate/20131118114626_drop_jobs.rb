class DropJobs < ActiveRecord::Migration
  def change
  	drop_table :jobs
  end
end
