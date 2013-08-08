class Extension < ActiveRecord::Base
  attr_accessible :name, :download_url, :short_description, :notes, :category, :interface, :author_type, :readme, :download_zip_url, :icon
  mount_uploader :icon, IconUploader

  require 'open-uri'

  	# this method may get more specific later:
	def stripped_url
		if self.download_url[(self.download_url.length) -1] == "/"
			self.download_url.chop!
		end	
		base_link = self.download_url[self.download_url.index("github"), (self.download_url.length) -1]
		if base_link.include? "/master"
			base_link = base_link[0, base_link.index("/master")]			
		end	
		if base_link.include? "/archive"
			base_link = base_link[0, base_link.index("/archive")]			
		end
		return base_link
	end
	def download_zip_url	
		url = "https://" + stripped_url
		if self.interface == 'classic'
			return url
		else
			return url + "/archive/master.zip"
		end
	end

	def readme
		if self.interface == 'classic'
			return self.notes
		else
			return fetch_readme
		end
	end

	def fetch_readme
		url = stripped_url
		contents = ""

		readme_link = "https://raw." + base_link + "/master/README.md"
		puts "readme_link: #{readme_link}"

		begin
			contents = open(readme_link) {|f| f.read }
		rescue Exception => e
			puts $!, $@
			contents = self.notes
		rescue Timeout::Error
			puts "request timed out"
			contents = self.notes
		rescue OpenURI::HTTPError => e
			logger.info e.message
			contents = self.notes
		end
#		contents = readme_link
	end
	def icon_url
		self.icon.url
	end
	def icon_thumb
		self.icon.thumb.url
	end

end
