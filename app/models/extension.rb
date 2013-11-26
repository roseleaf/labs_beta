class Extension < ActiveRecord::Base
  attr_accessible :name, :download_url, :short_description, :notes, :category, :interface, :author_type, :readme, :download_zip_url, :icon, :github_id
  # mount_uploader :icon, IconUploader
  require 'httparty'
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
		self.notes
	end

	def fetch_readme
		url = stripped_url
		contents = ""

		readme_link = "https://raw." + url + "/master/README.md"
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
		self.notes = contents
		self.save!
		return self.notes
	end
	def icon_url
		if self.interface == 'classic'
			return '/assets/default.png'
		else
			return image_link = "https://raw." + stripped_url + "/master/assets/logo.png"
		end
	end

	def self.github_sync
		current_extensions = []
		lab_repos = self.get_lab_repos
		Extension.all().each { |extension| current_extensions << extension.github_id }
  		puts current_extensions
  		lab_repos.each do |repo|  
  			if !current_extensions.include?(repo['id']) && repo['private'] == false
  				ex = Extension.create()
  				ex.update_attributes(name: repo['name'].gsub(/_/, ' '), download_url: repo['html_url'], short_description: repo['description'], interface: "lotus", author_type: "zendesk", notes: "This extension is brand new! Notes are on their way.", github_id: repo['id'])
  				ex.fetch_readme
  			end
  		end
  	end
  	def self.get_lab_repos
	    begin
	      repos = HTTParty.get('https://api.github.com/orgs/zendesklabs/repos',     
	      :headers => { "User-Agent" => "roseleaf"})

	    rescue
	      nil
	    end	
	    return repos
	end  		
end

