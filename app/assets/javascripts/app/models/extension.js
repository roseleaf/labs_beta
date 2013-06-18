ZenlabsBeta.Extension = DS.Model.extend({
  resourceUrl:        'api/v1/extensions',
  name: DS.attr('string'),
  notes: DS.attr('string'),

  validate: function() {
    if (this.get('name') === undefined || this.get('name') === '' ||
        this.get('notes') === undefined  || this.get('notes') === '') {
      return 'Contacts require a first and a last name.';
    }
  },

  fullName: Ember.computed(function() {
    return this.get('name') + ' ' + this.get('notes');
  }).property('name', 'notes')
});
