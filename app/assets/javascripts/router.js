ZenlabsBeta.Router.map(function() {
  this.resource('extensions', { path: '/extensions/list' }, function() {
    this.route('list');
  });});
