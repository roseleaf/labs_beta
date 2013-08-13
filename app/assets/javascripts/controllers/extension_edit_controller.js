ZenlabsBeta.ExtensionEditController = Em.ObjectController.extend({
  needs: ['extension'],

  startEditing: function() {
    // add the contact and its associated phone numbers to a local transaction
    var extension = this.get('model');
    var transaction = extension.get('store').transaction();
    transaction.add(extension);
    // extension.get('phoneNumbers').forEach(function(phoneNumber) {
    //   transaction.add(phoneNumber);
    // });
    this.transaction = transaction;
  },

  stopEditing: function() {
    // rollback the local transaction if it hasn't already been cleared
    var transaction = this.transaction;
    if (transaction) {
      transaction.rollback();
      this.transaction = undefined;
    }
  },

  save: function() {
    this.transaction.commit();
    this.transaction = undefined;
    this.get('controllers.extension').stopEditing();
  },

  cancel: function() {
    this.get('controllers.extension').stopEditing();
  }

  // addPhoneNumber: function() {
  //   this.get('model.phoneNumbers').createRecord();
  // },

  // removePhoneNumber: function(phoneNumber) {
  //   phoneNumber.deleteRecord();
  // }
});