ZenlabsBeta.EditContactView = Ember.View.extend({
  tagName:      'form',
  templateName: 'app/extensions/edit',

  init: function() {
    this._super();

    // Create a new extension that's a duplicate of the contact in the parentView;
    // Changes made to the duplicate won't be applied to the original unless
    // everything goes well in submitForm()
    this.set("extension", this.get('parentView').get('extension').copy());
  },

  didInsertElement: function() {
    this._super();
    this.$('input:first').focus();
  },

  cancelForm: function() {
    this.get("parentView").hideEdit();
  },

  submit: function(event) {
    var self = this;
    var extension = this.get("extension");

    event.preventDefault();

    extension.saveResource()
      .fail( function(e) {
        ZenlabsBeta.displayError(e);
      })
      .done( function() {
        var parentView = self.get("parentView");
        parentView.get("extension").duplicateProperties(extension);
        parentView.hideEdit();
      });
  }
});