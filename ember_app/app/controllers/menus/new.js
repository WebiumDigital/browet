import Ember from 'ember';

export default Ember.Controller.extend({
  pageTitle: 'Менюхи',
  actions: {
    save() {
      this.get('model').save().then(() => {
        this.transitionToRoute('menus.index');
      });
    }
  }
});