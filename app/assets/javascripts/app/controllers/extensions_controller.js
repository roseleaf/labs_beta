// ZenlabsBeta.extensionsController = Ember.ResourceCollection.create({
//   type: ZenlabsBeta.Extension
// });

define('extensionsController', ['ember'], function(Ember) {
  var extensionsController = Ember.ArrayController.create({
    content: []
  });
   
  return extensionsController;
});