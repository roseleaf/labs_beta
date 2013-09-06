App.GetstartedView = Ember.View.extend({
  didInsertElement: function() {
    this.setActiveTab();
  },
  setActiveTab: function(){
    $('#directionsType a').click(function(){
      $('.active').removeClass('active');
      $(this).addClass('active');
    });
  }
});