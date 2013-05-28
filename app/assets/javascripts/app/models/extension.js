ZenlabsBeta.Extension = Ember.Resource.define({
	url: '/api/v1/extensions',
	schema: {
		name: String,
		downloadURL: { type: String, path: 'download_url' },
		shortDescription: { type: String, path: 'short_description' },
		notes: String,
		category: String,
		interfaceType: { type: String, path: 'interface' },
		authorType: { type: String, path: 'author_type' }
	}
});
