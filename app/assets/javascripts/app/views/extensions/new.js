ZenlabsBeta.NewExtensionView = Ember.View.extend({
  tagName:      'form',
  templateName: 'app/extensions/edit',

  init: function() {
    this._super();
    this.set("extension", ZenlabsBeta.Extension.create());
  },

  didInsertElement: function() {
    this._super();
    this.$('input:first').focus();
  },

  cancelForm: function() {
    this.get("parentView").hideNew();
  },

  submit: function(event) {
    var self = this;
    var contact = this.get("extension");

    event.preventDefault();

    contact.saveResource()
      .fail( function(e) {
        ZenlabsBeta.displayError(e);
      })
      .done(function() {
        ZenlabsBeta.contactsController.pushObject(extension);
        self.get("parentView").hideNew();
      });
  }
});