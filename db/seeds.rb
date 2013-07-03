# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
extensions = Extension.create([{ name: 'Display Updated-At',  download_url: 'https://gist.github.com/roseleaf/e61c877a9c66cfb80e8a/download', short_description: 'Show date an article was updated at, not just created', notes: 'abc', category: 'display', interface: 'classic', author_type: 'services'}, 
	{ name: 'Conditional Fields (Agent)',  download_url: 'https://github.com/zendesk/conditional_fields_app/archive/master.zip', short_description: 'Show and hide fields in the Agent interface', notes: 'dink', category: 'display', interface: 'lotus', author_type: 'services'}, 
	{ name: 'Bitly Integration',  download_url: 'https://github.com/zendesk/bitly_integration_app/archive/master.zip', short_description: 'Shorten any link in your comment with the click of a button', notes: 'pink', category: 'comments', interface: 'lotus', author_type: 'services'}, 
	{ name: 'Rebrander',  download_url: 'https://github.com/zendesk/rebrander_app/archive/master.zip', short_description: 'Converts non-branded urls (*.zendesk.com) to branded', notes: 'plink', category: 'comments', interface: 'lotus', author_type: 'services'}, 
	{ name: 'Project Management',  download_url: 'https://github.com/zendesk/project_app/archive/master.zip', short_description: 'Create a parent ticket which children tickets are created from', notes: 'rink', category: 'ticket creation', interface: 'lotus', author_type: 'services'}, 
	{ name: 'Create Ticket in Spoke',  download_url: 'https://github.com/zendesk/create_ticket_in_spoke_app/archive/master.zip', short_description: 'Create related ticket from the hub account while in ticket view', notes: '', category: '', interface: 'lotus', author_type: 'services'},
	{ name: 'Agent Tracker',  download_url: 'https://github.com/zendesk/agent_tracker_app/archive/master.zip', short_description: 'Adds agent name or group to the ticket when the agent views it.', notes: '', category: 'ticketCreation', interface: 'lotus', author_type: 'services'},
	# { name: 'Organization App',  download_url: '', short_description: '', notes: '', category: '', interface: 'lotus', author_type: 'services'},
	{ name: 'Facebook Lookup',  download_url: 'https://github.com/zendesk/facebook_lookup_app/archive/master.zip', short_description: 'Lookup users by facebook UID', notes: 'mink', category: 'findingData', interface: 'lotus', author_type: 'services'},
	{ name: 'Quick Links App',  download_url: 'https://github.com/zendesk/quicklinks_app/archive/master.zip', short_description: 'Uses data from the ticket to create links that search various websites', notes: '', category: 'findingData', interface: 'lotus', author_type: 'services'},
	{ name: 'Mobile Customization',  download_url: 'https://gist.github.com/roseleaf/c5dcacfe149b8e653821/download', short_description: 'Mobile optimized styles for web version of zendesk', notes: '', category: 'display', interface: 'classic', author_type: 'services'},
	# { name: 'Flag Incident',  download_url: '', short_description: '', notes: '', category: '', interface: '', author_type: 'services'},
	{ name: 'Conditional Fields (End User)',  download_url: 'https://gist.github.com/roseleaf/d062cfb9fa80aada0a73/download', short_description: 'Hide and show certain fields based on conditions', notes: '', category: 'display', interface: 'classic', author_type: 'services'},
	])
