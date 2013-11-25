App.GetstartedView = Ember.View.extend({
  didInsertElement: function() {
    Ember.run.next(this, this.setActiveTab);
  },
  setActiveTab: function(){
    $('#directionsType a').click(function(){
      $('.active').removeClass('active');
      $(this).addClass('active');
    });
  }
});