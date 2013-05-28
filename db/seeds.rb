# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
extensions = Extension.create([{ name: 'HTML App',  download_url: 'https://github.com/zendesk/html_app/archive/master.zip', short_description: 'xyz', notes: 'abc', category: 'display', interface: 'lotus', author_type: 'services'}, 
	{ name: 'Conditional Fields',  download_url: 'https://github.com/zendesk/conditional_fields_app/archive/master.zip', short_description: 'blink', notes: 'dink', category: 'display', interface: 'lotus', author_type: 'services'}, 
	{ name: 'Bitly Integration',  download_url: 'https://github.com/zendesk/bitly_integration_app/archive/master.zip', short_description: 'tink', notes: 'pink', category: 'comments', interface: 'lotus', author_type: 'services'}, 
	{ name: 'Rebrander',  download_url: 'https://github.com/zendesk/rebrander_app/archive/master.zip', short_description: 'fink', notes: 'plink', category: 'comments', interface: 'lotus', author_type: 'services'}, 
	{ name: 'Project Management',  download_url: 'https://github.com/zendesk/project_app/archive/master.zip', short_description: 'think', notes: 'rink', category: 'ticket creation', interface: 'lotus', author_type: 'services'}, 
	# { name: 'Create Ticket in Spoke',  download_url: '', short_description: '', notes: '', category: '', interface: 'lotus', author_type: 'services'},
	# { name: 'Agent Tracker',  download_url: '', short_description: '', notes: '', category: '', interface: 'lotus', author_type: 'services'},
	# { name: 'Organization App',  download_url: '', short_description: '', notes: '', category: '', interface: 'lotus', author_type: 'services'},
	{ name: 'Facebook Lookup',  download_url: 'https://github.com/zendesk/facebook_lookup_app/archive/master.zip', short_description: 'drink', notes: 'mink', category: 'finding data', interface: 'lotus', author_type: 'services'}
	# { name: 'Quick Links App',  download_url: '', short_description: 'lotus', notes: '', category: '', interface: '', author_type: 'services'},
	# { name: 'Mobile Customization',  download_url: 'x', short_description: '', notes: '', category: '', interface: '', author_type: 'services'},
	# { name: 'Flag Incident',  download_url: '', short_description: '', notes: '', category: '', interface: '', author_type: 'services'},
	# { name: 'Conditional Fields',  download_url: '', short_description: '', notes: '', category: '', interface: '', author_type: 'services'},
	])
