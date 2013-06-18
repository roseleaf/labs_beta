DS.RESTAdapter.reopen({
  namespace: 'api/v1'
});
ZenlabsBeta.Store = DS.Store.extend({
  url: 'http://zenlabs_beta.dev/',
  revision: 11
});
ZenlabsBeta.Adapter = DS.RESTAdapter.extend({
  bulkCommit: false
});

