DS.RESTAdapter.reopen({
  namespace: 'api/v1'
});
ZenlabsBeta.store = DS.Store.create({
  adapter: DS.RESTAdapter.create()
});

