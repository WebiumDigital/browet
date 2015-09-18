import Ember from 'ember';

export default Ember.Controller.extend({
  pageTitle: 'Коллекции',
  actions: {
    create() {
      this.get('model').save().then(() => {
        this.transitionToRoute('collections.index');
      });
    }
  }
});