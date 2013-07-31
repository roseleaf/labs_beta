class Extension < ActiveRecord::Base
	# attr_accessible :name
  attr_accessible :name, :download_url, :short_description, :notes, :category, :interface, :author_type
end
