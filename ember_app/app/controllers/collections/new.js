import Ember from 'ember';

export default Ember.Controller.extend({
  pageTitle: 'Коллекции',
  actions: {
    create() {
      var self = this;
      this.get('model').save().then(function() {
        self.transitionToRoute('collections.index');
      });
    }
  }
});