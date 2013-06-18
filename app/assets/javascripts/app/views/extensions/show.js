ZenlabsBeta.ShowExtensionView = Ember.View.extend({
  templateName: 'app/extensions/show',
  classNames:   ['show-extension'],
  tagName:      'tr',

  doubleClick: function() {
    this.showEdit();
  },

  showEdit: function() {
    this.set('isEditing', true);
  },

  hideEdit: function() {
    this.set('isEditing', false);
  },

  destroyRecord: function() {
    var extension = this.get("extension");

    extension.destroyResource()
      .fail( function(e) {
        ZenlabsBeta.displayError(e);
      })
      .done(function() {
        ZenlabsBeta.extensionsController.removeObject(extension);
      });
  }
});