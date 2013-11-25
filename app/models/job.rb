class Job < ActiveRecord::Base
	attr_accessible :status, :external_id, :app_id

end
