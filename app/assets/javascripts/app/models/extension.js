//= require ../../vendor/ember


// ZenlabsBeta.Extension = DS.Model.extend({
// });
ZenlabsBeta.Extension = Ember.Resource.define({
  url: '/extensions',
  schema: {
    name:    String,
    downloadUrl:  { type: String, path: 'download_url' },
    shortDescription: {type: String, path: 'short_description' },
    notes: String,
    category: String,
    interfaceType: { type: String, path: 'interface' },
    authorType: { type: String, path: 'author_type' }
  }
});

