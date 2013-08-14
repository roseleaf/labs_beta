ZenlabsBeta.GetstartedView = Ember.View.extend({
  activeTab: Ember.computed.alias('controller.activeTab'),

  activeTabDidChange: (function() {
    if(this.state == 'inDOM') this.setActiveTab();
  }).observes('activeTab'),

  didInsertElement: function() {
    $('#directionsType a').click(function(){
      $('.active').removeClass('active');
      $(this).addClass('active');
    });
  }
});