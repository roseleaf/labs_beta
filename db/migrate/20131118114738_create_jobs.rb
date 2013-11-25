class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :status
      t.string :external_id
    end
  end
end