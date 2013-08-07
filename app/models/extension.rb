class Extension < ActiveRecord::Base
  attr_accessible :name, :download_url, :short_description, :notes, :category, :interface, :author_type, :readme, :download_zip_url
  require 'open-uri'
  	# I foresee this method getting bigger later:
	def stripped_url
		if self.download_url[(self.download_url.length) -1] == "/"
			self.download_url.chop!
		end	
		return self.download_url
	end
	def download_zip_url	
		url = stripped_url
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
		base_link = url[url.index("github"), (url.length) -1]
		if base_link.include? "/master"
			base_link = base_link[0, base_link.index("/master")]			
		end
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

end
