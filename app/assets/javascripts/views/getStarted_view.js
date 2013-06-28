ZenlabsBeta.GetstartedView = Ember.View.extend({
  activeTab: Ember.computed.alias('controller.activeTab'),
  
  activeTabDidChange: (function() {
    if(this.state == 'inDOM') this.setActiveTab();
  }).observes('activeTab'),
  
  didInsertElement: function() {
    this.setActiveTab();
  },
  
  setActiveTab: function() {
    $('.active').removeClass('active');
    var activeTab = this.get('activeTab');
    this.$("a[data-tab='%@']".fmt(activeTab)).parent().addClass('active');
  }
});