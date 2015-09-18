import Ember from 'ember';

export default Ember.Controller.extend({
  pageTitle: 'Коллекции',
  actions: {
    save() {
      this.get('model').save().then(() => {
        this.transitionToRoute('collections.index');
      });
    }
  }
});