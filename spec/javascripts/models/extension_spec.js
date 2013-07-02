describe("Extension", function() {
  beforeEach(function() {
    testExtension = ZenlabsBeta.Extension.createRecord({name: 'TestApp', download_url: 'Rowe', short_description: 'abc', notes: '123', category: 'display', author_type: 'services'});

  });

  it('Should give you back a string', function() {
    Ember.run(function() {
      expect(testExtension.get('name')).toEqual('TestApp');
    });
  });

  it('allows setting a property to undefined', function() {
    Ember.run(function(){
      testExtension.set('name', 'WillowApp');
      expect(testExtension.get('name')).toEqual('WillowApp');
      testExtension.set('name', undefined);
      expect(testExtension.get('name')).toBeUndefined();      
    });
  });

});
