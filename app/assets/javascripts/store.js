DS.RESTAdapter.reopen({
  namespace: 'api/v1'
});
App.store = DS.Store.create({
  adapter: DS.RESTAdapter.create()
});

